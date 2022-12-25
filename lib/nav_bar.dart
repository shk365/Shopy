import 'package:flutter/material.dart';
import 'package:shopy/screens/cart/cart.dart';
import 'package:shopy/screens/home/homepage.dart';
import 'package:shopy/screens/user/user.dart';

class NavBar extends StatefulWidget {
  NavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final pages = [const HomePage(), const CartPage(), const UserPage()];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Shopy'),
        toolbarHeight: 80,
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        iconSize: 40,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: const Color.fromARGB(119, 63, 81, 181),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) {
          // Respond to item press.
          setState(() => _currentIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart_rounded),
          ),
          BottomNavigationBarItem(
            label: 'You',
            icon: Icon(Icons.person_rounded),
          ),
        ],
      ),
    );
  }
}
