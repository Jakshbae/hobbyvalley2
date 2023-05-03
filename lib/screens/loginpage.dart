import 'package:flutter/material.dart';
import 'package:hobby_valley2/screens/Coupons.dart';
import 'package:hobby_valley2/screens/cart_page.dart';
import 'package:hobby_valley2/screens/settings.dart';

import 'wishList.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[800],),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://previews.123rf.com/images/ollymolly2015/ollymolly20151510/ollymolly2015151000019/45852364-hobby-background-crafting-tools-pattern-handmade-items-seamless-pattern-.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images/avocado.png"),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Mr. Samat is the best teacher',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Orders',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.indigo.shade300
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Wishlist',
                    style: TextStyle(
                      fontSize: 16,
                        color: Colors.indigo.shade300
                    ),
                  ),
                  Text(
                    '5',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Coupons',
                    style: TextStyle(
                      fontSize: 16,
                        color: Colors.indigo.shade300
                    ),
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.shopping_bag,color:Colors.indigo.shade300),
                  title: Text('My Orders',style: TextStyle(color: Colors.indigo.shade300)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartPage(),
                        ));
                    // navigate to my orders page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.favorite,color:Colors.indigo.shade300),
                  title: Text('Wishlist',style: TextStyle(color: Colors.indigo.shade300)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartPage(),
                        ));
                  },
                    // navigate to wishlist page

                ),
                ListTile(
                  leading: Icon(Icons.card_giftcard,color:Colors.indigo.shade300),
                  title: Text('My Coupons',style: TextStyle(color: Colors.indigo.shade300)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyCouponsScreen(),
                        ));
                    // navigate to my coupons page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings,color:Colors.indigo.shade300),
                  title: Text('Settings',style: TextStyle(color: Colors.indigo.shade300)),
                  onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => SettingsScreen(),
    ));

                    // navigate to settings page
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}