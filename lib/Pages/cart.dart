import 'package:converse_in/models/brands.dart';
import 'package:converse_in/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Shoes>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children  : [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'My Cart 🛍',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Brands individualShoe = value.getUserCart()[index];
                  return CartItem(brands: individualShoe,);
                },
              ),
            ),
            SizedBox(height: 60,),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: Center(
                  child: Text(
                    'Pay \$',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
