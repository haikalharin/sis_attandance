part of 'maps_page_bloc.dart';

@immutable
abstract class MapsPageEvent extends Equatable {
  const MapsPageEvent();

  @override
  List<Object> get props => [];
}

class LatLongInputEvent extends MapsPageEvent {
  final double lat;
  final double long;
  const LatLongInputEvent(this.lat,this.long);

  @override
  List<Object> get props => [];
}
