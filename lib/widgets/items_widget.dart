import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_valley2/screens/single_item_screen.dart';
import 'package:http/http.dart' as http;

import '../screens/cart_page.dart';
class ItemsWidget extends StatelessWidget {
  List<dynamic> users = [];




  List img = [
    'Knitting Yarn',
    'Crochet Hook',
    'Braiding Machine',
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  )
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SingleItemScreen(img[i])));
                  },
                  child: Image.asset(
                    "images/${img[i]}.png",
                    width: 120,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          img[i],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5C6BC0),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "for knitting",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF5C6BC0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$20',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5C6BC0),
                        ),

                    ),

                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color(0xFF5C6BC0),
                          borderRadius: BorderRadius.circular(20),

                        ),

                        child:InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return CartPage();
                                },
                              ),
                            );
                          },
                        child: const Icon(
                          CupertinoIcons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  // Future<void> fetchUser() async{
  //   const url = 'http://localhost:3000/user/';
  //   final uri = Uri.parse(url);
  //   final response = await http.get(uri);
  //   final body = response.body;
  //   final json = jsonDecode(body);
  //   setState((){
  //     users = json['result']
  //   });
  //   print(response);
  //   print('fetching complited');


}