import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_care_app/screens/home_Screens/home_screen.dart';
import 'package:pet_care_app/theme/colors.dart';

import '../home_Screens/appointments.dart';
import '../home_Screens/profile.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex =0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const Appointments(),
    const Explore(),
    const Profile()
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: _screens[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: AppColors.whiteColor,
          type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
             onTap: _onItemTapped,
             selectedItemColor: AppColors.violetColor,
            unselectedItemColor: AppColors.greyColor,
            items: [
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.watch_later_outlined),label: "Appointments"),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: "Profile"),
        ]),
      )
    );
  }
}
class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("this is explore screen"),
      ),
    );
  }
}

