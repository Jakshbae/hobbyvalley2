

import 'package:flutter/material.dart';

import '../screens/cart_page.dart';

class HomeBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color:  Colors.black.withOpacity(0.4),
      spreadRadius: 1,
      blurRadius: 8,
    ),

        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){},

          child:Icon(
            Icons.home,
            color: Color(0xFF7986CB),
      size: 35,
          ),
          ),
          Icon(
            Icons.favorite_outlined,
            color: Color(0xFF7986CB),
            size: 35,),

        InkWell(
        onTap: () {

            MaterialPageRoute(
              builder: (context) {
                return CartPage();
              },
            );

        },
          child:
          Icon(
            Icons.shopping_cart,
            color: Color(0xFF7986CB),
            size: 35,
          )
        ),
          Icon(
            Icons.person,
            color: Color(0xFF7986CB),
            size: 35,)
        ],
      ),
    );
  }
}