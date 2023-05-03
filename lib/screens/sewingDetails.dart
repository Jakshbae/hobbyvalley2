import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_valley2/screens/cart_page.dart';

class SewingItemDetailsPage extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;

  const SewingItemDetailsPage({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.fitWidth,
                height: 250,
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  itemName,
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
                  'Price: $itemPrice',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Description: This is a high-quality sewing item made '
                      'of quality materials. It is perfect for sewing both by schoolchildren and professionals. '
                      ' The item is easy to work with and comes'
                      ' in a variety of colors.',
                  style: TextStyle(fontSize: 16,),
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
                    onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CartPage();
                        },
                      ),
                    );// Add to cart logic
                    },
                    child: Icon(Icons.shopping_cart),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Add to wishlist logic
                    },
                    child: Icon(Icons.favorite_border),
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