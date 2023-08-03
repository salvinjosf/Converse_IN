import 'package:converse_in/models/brands.dart';
import 'package:converse_in/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/brand_tile.dart';

class HotPicks extends StatefulWidget {
  const HotPicks({Key? key}) : super(key: key);

  @override
  State<HotPicks> createState() => _HotPicksState();
}

class _HotPicksState extends State<HotPicks> {
  addShoeToCart(Brands brands) {
    Provider.of<Shoes>(context, listen: false).addItem(brands);
    showDialog(context: context, builder: (context) => const AlertDialog(
      title: Text('Successfully Added'),
      content: Text('Go to cart for checkout'),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Shoes>(
      builder: (context, value, child) => Column(
        children: [
          //Search Bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              '\"Kickin\' It Fresh. Street wear Sneaks\"',
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Brands brands = value.shoeShop[index];
                return BrandTile(
                  brands: brands,
                  onTap: () => addShoeToCart(brands),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
