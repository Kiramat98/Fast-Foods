import 'package:flutter/material.dart';
import 'package:practice5/Screens/cart_screen.dart';
import 'package:practice5/Screens/home_screen.dart';
import 'package:practice5/Screens/menu_screen.dart';
import 'package:practice5/Screens/profile.dart';

class BottomNavigationBarr extends StatefulWidget {
  const BottomNavigationBarr({super.key});

  @override
  State<BottomNavigationBarr> createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const MenuScreen(),
    const Cart(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange[300],
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        backgroundColor: Colors.white,
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: ((value) => setState(
              () {
                _currentIndex = value;
              },
            )),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fastfood_rounded,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
