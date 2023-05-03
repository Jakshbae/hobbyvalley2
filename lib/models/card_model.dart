import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Braiding", "4.00", "images/Braiding Machine.png", Colors.indigo],
    ["Crochet Hook", "2.50", "images/Crochet Hook.png", Colors.indigo],
    ["Knitting Yarn", "12.80", "images/Knitting Yarn.png", Colors.indigo],
    ["Marker", "1.00", "images/Marker.png", Colors.indigo],
  ];
  final List _paintingItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Brushes", "2.75", "images/Brush.png", Colors.indigo],
    ["Markers", "10.50", "images/Flomaster.png", Colors.indigo],
    ["Gouache", "12.80", "images/Gouache.png", Colors.indigo],
    ["Easel", "8.00", "images/Molbert.png", Colors.indigo],
  ];
  final List _scrapbookingItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Flake Seal Pack", "2.75", "images/Candy.png", Colors.indigo],
    ["Hole Punch", "6.50", "images/Дырокол.png", Colors.indigo],
    ["Scissors", "3.80", "images/Ножницы.png", Colors.indigo],
    ["Decorative Tape", "5.00", "images/Скотч.png", Colors.indigo],
  ];
  final List _sewingItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Pins", "1.25", "images/Булавки.png", Colors.indigo],
    ["Sewing Kit", "5.50", "images/Набор.png", Colors.indigo],
    ["Threads", "2.80", "images/Нитки.png", Colors.indigo],
    ["Sewing Machine", "50.50", "images/шитье.png", Colors.indigo],
  ];


  // list of cart items
  List _cartItems = [];


  get cartItems => _cartItems;

  get paintingItems => _paintingItems;
  get sewingItems => _sewingItems;
  get scrapbookingItems => _scrapbookingItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void addPaintToCart(int index) {
    _cartItems.add(_paintingItems[index]);
    notifyListeners();
  }
  void addScrapbookingToCart(int index) {
    _cartItems.add(_scrapbookingItems[index]);
    notifyListeners();
  }
  void addSewingToCart(int index) {
    _cartItems.add(_sewingItems[index]);
    notifyListeners();
  }
  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}