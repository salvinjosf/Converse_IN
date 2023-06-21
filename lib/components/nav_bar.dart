import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  NavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey[700],
        rippleColor: Colors.blueGrey,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 0,

        onTabChange: (value) => onTabChange!(value),

        tabs: const [
          GButton(icon: Icons.local_fire_department,
            text: ' Hot Picks'),
          GButton(icon: Icons.shopping_bag,
            text: ' Cart',
          )
        ],
      ),
    );
  }
}
