import 'package:flutter/material.dart';

class MyCouponsScreen extends StatelessWidget {
  final List<String> _coupons = [    'Сoupon for free shipping',    'Discount coupon 1500 kzt',    '50% discount coupon',  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
        color: Colors.grey[800],),

        title: Text('My Coupons',style: TextStyle(color: Colors.black),
      ),
      ),
      body: ListView.builder(
        itemCount: _coupons.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.local_offer,color:Colors.indigo.shade300),
              title: Text(_coupons[index]),
              subtitle: Text('Expires on 31/12/2023'),
              trailing: IconButton(
                icon: Icon(Icons.content_copy,color:Colors.indigo.shade300),
                onPressed: () {
                  // Copy coupon code to clipboard
                },
              ),
            ),
          );
        },
      ),
    );
  }
}