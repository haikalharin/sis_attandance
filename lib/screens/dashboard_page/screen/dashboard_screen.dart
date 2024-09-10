import 'package:flutter/material.dart';
import 'package:sis_attendance/utils/acl_color.dart';



class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Profile and Notifications section
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.red.shade300,
                      Colors.blue.shade800,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UDNMBDEV412351',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          'Septian Chaniaco',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Mobile Developer',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.notifications, color: Colors.white),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.settings, color: Colors.white),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Date and Check-In Section
              Container(
                margin:  const EdgeInsets.all(16.0),
                child: Card(
                  color: AppColors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Rabu, 20 Sep 2023',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Text(
                          'Jam kerja anda pukul 09:00 - 18:00',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 20),

                        // Check-In / Check-Out Buttons
                        Container(
                          padding: const EdgeInsets.all(10),
                          color: AppColors.white,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded( // This will make the card take up available space equally
                                    child: Card(
                                      elevation: 5,
                                      color: AppColors.white,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust padding if necessary
                                        child: Column(
                                          children: [
                                            Icon(Icons.login, color: Colors.green),
                                            SizedBox(height: 8),
                                            Text('Check In'),
                                            Text('------'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10), // Add spacing between the two cards
                                  Expanded( // This will make the card take up available space equally
                                    child: Card(
                                      elevation: 5,
                                      color: AppColors.white,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust padding if necessary
                                        child: Column(
                                          children: [
                                            Icon(Icons.logout, color: Colors.red),
                                            SizedBox(height: 8),
                                            Text('Check Out'),
                                            Text('------'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 10),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue.shade900,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.all(15),
                                  ),
                                  child: Text('Check In Manual',style: TextStyle(color: AppColors.white),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Banner Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Card(
                  color: AppColors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        child: Image.asset(
                          "assets/banner_example.png", // Replace with your actual image URL
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Kebijakan libur lebaran',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Menu Grid
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView(
                  shrinkWrap: true, // Makes it non-scrollable
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  children: [
                    _buildMenuItem(Icons.calendar_today, 'Kehadiran'),
                    _buildMenuItem(Icons.monetization_on, 'Klaim'),
                    _buildMenuItem(Icons.confirmation_num, 'Tiket'),
                    _buildMenuItem(Icons.check_circle, 'Persetujuan'),
                    _buildMenuItem(Icons.flight_takeoff, 'Cuti'),
                    _buildMenuItem(Icons.more_horiz, 'Lainnya'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget for each menu item
  Widget _buildMenuItem(IconData icon, String label) {
    return Card(
      color: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue.shade900,
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
