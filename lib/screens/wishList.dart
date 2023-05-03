import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  final List<String> items;

  const WishlistPage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}