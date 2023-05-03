import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class KnittingItemDetailsPage extends StatefulWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;

  const KnittingItemDetailsPage({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
  }) : super(key: key);

  @override
  _KnittingItemDetailsPageState createState() => _KnittingItemDetailsPageState();
}

class _KnittingItemDetailsPageState extends State<KnittingItemDetailsPage> {
  bool _isWishlist = false;
  List<String> _wishlistItems = [];

  void _toggleWishlist() {
    setState(() {
      if (_isWishlist) {
        _wishlistItems.remove(widget.itemName);
      } else {
        _wishlistItems.add(widget.itemName);
      }
      _isWishlist = !_isWishlist;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.itemName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                widget.imagePath,
                fit: BoxFit.fitWidth,
                height: 250,
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  widget.itemName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Price: ${widget.itemPrice}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Description: This is a high-quality knitting item made '
                      'from soft wool. It is perfect for creating warm and cozy accessories '
                      'like hats, scarves, and gloves. The item is easy to work with and comes'
                      ' in a variety of colors.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Made in Kazakhstan',
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CartPage();
                          },
                        ),
                      );
                      // Add to cart logic
                    },
                    child: Icon(Icons.shopping_cart),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.indigo.shade300),
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: _toggleWishlist,
                    child: Icon(
                      _isWishlist ? Icons.favorite : Icons.favorite_border,
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.indigo.shade300),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
