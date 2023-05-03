import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_valley2/screens/cart_page.dart';

class SingleItemScreen extends StatelessWidget {
  String img;
  SingleItemScreen(this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: SafeArea(
        child: Padding(
        padding: EdgeInsets.only(top: 30, bottom: 20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Padding(
    padding:  EdgeInsets.only(left: 25),
    child: InkWell(
    onTap: () {
    Navigator.pop(context);
    },
    child: Icon(
    Icons.arrow_back_ios_new,
    color: Colors.black.withOpacity(0.4),
    ),
    ),
    ),
    SizedBox(height: 50),
    Center(
    child: Image.asset(
    "images/$img.png",
    width: MediaQuery.of(context).size.width / 1.2,
    ),
    ),
    SizedBox(height: 50),
    Padding(
    padding: EdgeInsets.only(left: 25, right: 40),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Hobby Valley",
    style: TextStyle(
    color: Color(0xFF7986CB),
    letterSpacing: 3,
    ),
    ),
    SizedBox(height: 20),
    Text(
    img,
    style: TextStyle(
    fontSize: 30,
    letterSpacing: 1,
    color: Color(0xFF7986CB),
    ),
    ),
    SizedBox(height: 25),
    Container(
    width: MediaQuery.of(context).size.width,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    padding: EdgeInsets.all(15),
    width: 120,
    decoration: BoxDecoration(
    border: Border.all(
    color: Colors.black.withOpacity(0.4),
    ),
    borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Icon(
    CupertinoIcons.minus,
    size: 18,
    color: Color(0xFF7986CB),
    ),
    SizedBox(width: 15),
    Text(
    "1",
    style: TextStyle(
    color: Color(0xFF7986CB),
    fontSize: 16,
    fontWeight: FontWeight.w500,
    ),
    ),
    SizedBox(width: 15),
    Icon(
    CupertinoIcons.plus,
    size: 18,
    color: Color(0xFF7986CB),
    ),
    ],
    ),
    ),
    Text(
    "\$9.10",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7986CB),
      ),
    ),
    ],
    ),
    ),
      SizedBox(height: 20),
      Text(
        "We are so cool, we are beauty queens!",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Color(0xFF7986CB),
        ),
      ),
      SizedBox(height: 20),
      Row(
        children: [
          Text(
            "For: ",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF7986CB),
            ),
          ),
          SizedBox(width: 10),
          Text(
            "Knitting ",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF7986CB),
            ),
          ),
        ],
      ),
      SizedBox(height: 30),
      Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 20, horizontal: 50 ),
              decoration: BoxDecoration(
                color: Color(0xFF7986CB),
                borderRadius: BorderRadius.circular(18),
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage(),
                    )
                  );
                },



              child: Text(
                "Add to cart",
                    style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),

              ),
              )


            ),
            Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFF7986CB),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                )
            ),
          ],
        ),
      ),
    ],
    ),
    ),
    ],
    ),
        ),
        ),
        ),
    );
  }
}