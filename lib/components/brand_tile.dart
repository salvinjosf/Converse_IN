import 'package:flutter/material.dart';

import '../models/brands.dart';

class BrandTile extends StatelessWidget {
  Brands brands;

  BrandTile({super.key, required this.brands});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      color: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(brands.img),
          const SizedBox(
            height: 40,
          ),
          Text(
            brands.name,
            style: TextStyle(
              color: Colors.grey.shade900,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            color: Colors.black87,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    22.0,
                  ),
                  child: Text(
                    brands.price,
                    style: TextStyle(color: Colors.grey[300],
                        fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 32,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
