import 'package:flutter/material.dart';

import '../models/brands.dart';

class BrandTile extends StatelessWidget {
  Brands brands;
  BrandTile({super.key, required this.});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: Column(
        children: [

        ],
      ),
    );
  }
}
