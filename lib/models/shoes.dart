import 'package:converse_in/models/brands.dart';

class Shoes {
  List<Brands> shoeShop = [
    Brands(name: 'Converse', price: '220', img: 'lib/assets/Converse-logo.png'),
    Brands(name: 'Nike', price: '236', img: 'lib/assets/nike-logo.png'),
    Brands(name: 'Adidas', price: '241', img: 'lib/assets/adidas-logo.png')
  ];

  List<Brands>getShoeBrands(){
    return shoeShop;
  }
}
