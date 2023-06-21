import 'package:flutter/material.dart';

class HotPicks extends StatefulWidget {
  const HotPicks({Key? key}) : super(key: key);

  @override
  State<HotPicks> createState() => _HotPicksState();
}

class _HotPicksState extends State<HotPicks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const Center(
        child: Text('Hot Picks'),
      ),
    );
  }
}
