import 'package:flutter/material.dart';

import '../models/brands.dart';

class BrandTile extends StatelessWidget {
  Brands brands;
  void Function()? onTap;
  BrandTile({super.key, required this.brands, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: 260,
      color: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(brands.img),
          const SizedBox(
            height: 10,
          ),
          Text(
            brands.name,
            style: TextStyle(
              color: Colors.grey.shade900,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              color: Colors.grey.shade900,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(
                      22.0,
                    ),
                    child: Text(
                      brands.price,
                      style: TextStyle(color: Colors.grey[300], fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.add,
                      size: 32,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
