import 'package:flutter/material.dart';
import 'package:medicine_app/screens/dashboard/account_screen.dart';
import 'package:medicine_app/screens/dashboard/home_screen.dart';
import 'package:medicine_app/screens/dashboard/setting.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0; // Set initial value to 0

  final List<Widget> _screens = [
    const HomeScreen(),
    Container(), // Replace with your desired screen
    Container(), // Replace with your desired screen
    const SettingScreen(),
    Container(),
    const AccountScreen(),// Replace with your desired screen
  ];

  final List<String> _titles = [
    'Home',
    'Cart',
    'Add',
    'Settings',
    'Comments',
    'User',
  ];

  final List<String> _iconPaths = [
    'assets/icons/home.png',
    'assets/icons/cart.png',
    'assets/icons/plus.png',
    'assets/icons/setting.png',
    'assets/icons/comment.png',
    'assets/icons/user.png',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      extendBody: true,
      body: _screens[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 3.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: const CircleBorder(
          side: BorderSide(color: Colors.black, width: 1.0),
        ),
        child: Image.asset(
          'assets/icons/qr.png',
          height: 34,
          width: 34,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: List.generate(
          _titles.length,
              (index) => BottomNavigationBarItem(
            icon: Image.asset(
              _iconPaths[index],
              height: 20,
              width: 20,
              color: _selectedIndex == index ? Colors.red : Colors.black,
            ),
            label: _titles[index],
          ),
        ),
      ),
    ),
  );
}
