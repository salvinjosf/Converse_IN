import 'package:converse_in/components/nav_bar.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
import 'hot_picks.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

final List<Widget> _pages = [
  const HotPicks(),
  const Cart(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: NavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
