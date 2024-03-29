import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:power_zone/Features/Landing%20Screen/Landing_Screen.dart';
import 'package:power_zone/Features/Workout%20Screen/Workout_Screen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static List<dynamic> _widgetOptions = <dynamic>[
    WorkoutScreen(),
    LandingScreen(),
    WorkoutScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        height: 60.h,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 19, 20, 41),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: GNav(
          gap: 10,
          backgroundColor: Color.fromARGB(255, 19, 20, 41),
          color: Colors.grey,
          activeColor: Colors.blue.withOpacity(0.8),
          tabBackgroundColor: Colors.grey.shade800,
          padding: EdgeInsets.all(16),
          iconSize: 26,
          hoverColor: Colors.blue.withOpacity(0.5),
          tabs: [
            GButton(
              icon: Icons.fitness_center_outlined,
              text: 'Workout',
            ),
            GButton(
              icon: Icons.grid_view_rounded,
              text: 'Category',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
