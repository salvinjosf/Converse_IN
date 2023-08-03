import 'package:converse_in/models/shoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/brands.dart';

class CartItem extends StatefulWidget {
  Brands brands;

  CartItem({super.key, required this.brands});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeShoeFromCart() {
    Provider.of<Shoes>(context, listen: false).removeItem(widget.brands);
    showDialog(context: context, builder: (context) => const AlertDialog(
      title: Text('Successfully removed'),
      content: Text('Refresh cart for checkout'),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      child: ListTile(
        leading: Image.asset(widget.brands.img),
        title: Text(widget.brands.name),
        subtitle: Text(widget.brands.price),
        trailing: IconButton(
          onPressed: removeShoeFromCart,
          icon: const Icon(Icons.remove_circle_outline_outlined),
          color: Colors.grey.shade800,
        ),
      ),
    );
  }
}
