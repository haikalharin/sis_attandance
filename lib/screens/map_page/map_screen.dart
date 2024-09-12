import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:formz/formz.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sis_attendance/screens/map_page/bloc/maps_page_bloc.dart';
import 'package:sis_attendance/screens/map_page/bloc/maps_page_bloc.dart';

import '../../di.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late MapController _mapController;
  LatLng _sahidSudirmanCenter =
      LatLng(-6.210885063450447, 106.81863249130194); // Target location
  LatLng _currentPosition = LatLng(0, 0); // Default position
  double _zoomLevel = 16.0; // Fixed zoom level
  bool _isNearLocation = false;
  bool _isNearLocationBefore = false;
  double _distanceToTarget = 0.0; // Distance to target

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    _getCurrentLocation();
  }

  // Get the current location of the user
  Future<void> _getCurrentLocation() async {
    try {
      // Check if location services are enabled and permissions granted
      if (!await Geolocator.isLocationServiceEnabled()) {
        throw 'Location services are disabled.';
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied ||
            permission == LocationPermission.deniedForever) {
          throw 'Location permissions are denied.';
        }
      }

      // Get current position
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      setState(() {
        _currentPosition = LatLng(position.latitude, position.longitude);
        _distanceToTarget =
            _getDistance(_currentPosition, _sahidSudirmanCenter);
        _isNearLocation = _distanceToTarget <= 500; // Check proximity to target
        _isNearLocationBefore =
            _distanceToTarget <= 1000; // Check proximity to target
      });

      // Move map to the user's current location
      _mapController.move(_currentPosition, _zoomLevel);
    } catch (e) {
      // Handle errors (location services or permissions issues)
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error getting location: $e')));
    }
  }

  // Calculate the distance between two points in meters
  double _getDistance(LatLng start, LatLng end) {
    final Distance distance = Distance();
    return distance.as(LengthUnit.Meter, start, end);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MapsPageBloc, MapsPageState>(
      listener: (context, state) {
        if (state.submitStatus.isSuccess) {

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.addressModel?.displayName ?? ''),
            ),
          );
        }
      },
      child: BlocBuilder<MapsPageBloc, MapsPageState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Current Position'),
            ),
            body: Column(
              children: [
                Expanded(
                  child: FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      initialCenter: _currentPosition,
                      // Use initialCenter instead of center
                      initialZoom: _zoomLevel,
                      // Use initialZoom instead of zoom
                      maxZoom: 19.0,
                      // Set maximum zoom level
                      minZoom: 10.0,
                      // Set minimum zoom level
                      // interactiveFlags: InteractiveFlag.all &
                      // ~InteractiveFlag.pinchZoom &
                      // ~InteractiveFlag.doubleTapZoom, // Disable zoom gestures
                      onPositionChanged: (MapCamera position, bool hasGesture) {
                        // Keep the zoom fixed
                        if (hasGesture) {
                          _mapController.move(
                              position.center ?? _currentPosition, _zoomLevel);
                        }
                      },
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: const ['a', 'b', 'c'],
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: _sahidSudirmanCenter,
                            width: 80.0,
                            height: 80.0,
                            child: Icon(Icons.location_city,
                                color: Colors.blue, size: 40),
                          ),
                          Marker(
                            point: _currentPosition,
                            width: 80.0,
                            height: 80.0,
                            child: Icon(
                              Icons.person_pin_circle,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                      if (_isNearLocationBefore) // Only show the circle if the user is near the location
                        CircleLayer(
                          circles: [
                            CircleMarker(
                              point: _sahidSudirmanCenter,
                              color: Colors.blue.withOpacity(0.2),
                              borderStrokeWidth: 2.0,
                              borderColor: Colors.blue,
                              radius: _getRadiusForProximity(
                                  _distanceToTarget), // Adjust radius based on distance
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Location (Inside Attendance Zone)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(_isNearLocation ? 'Normal' : 'Out of Zone'),
                        ],
                      ),
                      Text(
                        'Jl. Jendral Sudirman No. Kav 13–15, Jakarta',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Remarks: Optional'),
                          Text('${state.checkInTime??''} Normal'),
                        ],
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: _isNearLocation ? _checkIn : null,
                  child: Text('Check In'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _isNearLocation ? Colors.blue : Colors.grey,
                    minimumSize: Size(double.infinity, 40), // Full-width button
                  ),
                ),
              ],
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Space between buttons
                FloatingActionButton(
                  heroTag: 'floating2',
                  child: Icon(Icons.my_location),
                  onPressed: _getCurrentLocation,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Check-in logic (you can modify this to perform any action)
  void _checkIn() {
    getIt<MapsPageBloc>().add(LatLongInputEvent(
        _currentPosition.latitude, _currentPosition.longitude));
  }

  // Adjust the radius based on proximity to Sahid Sudirman Center
  double _getRadiusForProximity(double distance) {
    return distance.clamp(200, 200); // Clamp radius between 120 and 500 meters
  }
}
