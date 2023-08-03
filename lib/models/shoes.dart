import 'package:converse_in/models/brands.dart';
import 'package:flutter/material.dart';

class Shoes extends ChangeNotifier{
  List<Brands> shoeShop = [
    Brands(name: 'Peanuts Chuck 70', price: '\$119', img: 'lib/assets/peanuts.jpg'),
    Brands(name: 'ADER ERROR Chuck 70', price: '\$176', img: 'lib/assets/ader_error.jpg'),
    Brands(name: 'A-COLD-WALL', price: '\$162', img: 'lib/assets/cold_wall.png')
  ];

  List<Brands>getShoeBrands(){
    return shoeShop;
  }
  List<Brands> userCart = [];

  List<Brands>getUserCart(){
    return userCart;
  }

  void addItem(Brands brands){
    userCart.add(brands);
    notifyListeners();
  }

  void removeItem(Brands brands){
    userCart.remove(brands);
    notifyListeners();
  }
}
