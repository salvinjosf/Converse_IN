import 'package:converse_in/components/cart_item.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'lib/assets/Converse-logo.png',
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 8.0, bottom: 25.0),
              child: Divider(
                color: Colors.grey.shade900,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Orders",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.discount,
                  color: Colors.white,
                ),
                title: Text(
                  "Offers",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.support,
                  color: Colors.white,
                ),
                title: Text(
                  "Support",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(color: Colors.white,child: const ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: NavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedindex],
    );
  }
}
