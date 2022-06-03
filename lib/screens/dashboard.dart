import 'package:clan/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final screens = [
    const HomeScreen(),
    const Center(
      child: Text('This is second screen'),
    ),
    const Center(
      child: Text('This is 3rd screen'),
    ),
    const Center(
      child: Text('This is 4th screen'),
    ),

    const Center(
      child: Text('This is 5th screen'),
    ),
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: screens[current]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: current,
        onTap: (index) {
          setState(() {
            current = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/home.jpg'),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/achivement.jpg'),
              backgroundColor: Colors.black,
              label: 'Achievement'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/i2_1_3.jpg'),
              backgroundColor: Colors.black,
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/group.jpg'),
              backgroundColor: Colors.black,
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/profile.jpg'),
              backgroundColor: Colors.black,
              label: ''),
        ],
      ),
    );
  }
}
