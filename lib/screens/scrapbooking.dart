import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hobby_valley2/screens/painting.dart';
import 'package:hobby_valley2/screens/scrapbookingDetails.dart';
import 'package:provider/provider.dart';
import '../components/cart_comp.dart';
import '../models/card_model.dart';
import 'cart_page.dart';
import 'home_screen1.dart';
import 'loginpage.dart';

class Scrapbooking extends StatefulWidget {
  const Scrapbooking({super.key});

  @override
  State<Scrapbooking> createState() => _ScrapbookingState();
}

class _ScrapbookingState extends State<Scrapbooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[800],),
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 24.0),
        //   child: Icon(
        //     Icons.location_on,
        //     color: Colors.grey[700],
        //   ),
        // ),
        // title: Text(
        //   'Sydney, Australia',
        //   style: TextStyle(
        //     fontSize: 16,
        //     color: Colors.grey[700],
        //   ),
        // ),
        centerTitle: false,
        actions: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 24.0),
          //   child: Container(
          //     padding: EdgeInsets.all(16),
          //     decoration: BoxDecoration(
          //       color: Colors.grey[200],
          //       borderRadius: BorderRadius.circular(12),
          //     ),

          InkWell(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return
                  ProfilePage();
              },
              ),
              );
            },

            child: Icon(
              Icons.person,
              color: Colors.grey,

            ),
          ),

        ],

      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          ),
        ),
        child: const Icon(Icons.shopping_bag),
      ),
      body: Column(



        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),

          // good morning bro
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(''),
          ),

          const SizedBox(height: 4),

          // Let's order fresh items for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order items for you",
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                  color: Colors.indigo.shade300
              ),
            ),
          ),

          const SizedBox(height: 6),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1.0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Painting();
                      },
                    ),
                  );
                    // handle button press
                  },
                  child: Text('Painting'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo.shade300),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Scrapbooking();
                        },
                      ),
                    );
                    // handle button press
                  },
                  child: Text('Scrapbooking'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo.shade300),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                    // handle button press
                  },
                  child: Text('Knitting'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo.shade300),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomePage();
                        },
                      ),
                    );
                    // handle button press
                  },
                  child: Text('Sewing'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo.shade300),
                  ),
                ),
              ],
            ),
          ),

          // categories -> horizontal listview
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Scrapbooking Products",
              style: GoogleFonts.notoSerif(
                //fontWeight: FontWeight.bold,
                fontSize: 18,
                  color: Colors.indigo.shade300
              ),
            ),
          ),

          // recent orders -> show last 3
          Expanded(
            child: Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.scrapbookingItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScrapbookingItemDetailsPage(
                                itemName: value.scrapbookingItems[index][0],
                                itemPrice: value.scrapbookingItems[index][1],
                                imagePath: value.scrapbookingItems[index][2],
                              ),
                            ),
                          );
                        },

                    child: GroceryItemTile(
                      itemName: value.scrapbookingItems[index][0],
                      itemPrice: value.scrapbookingItems[index][1],
                      imagePath: value.scrapbookingItems[index][2],
                      color: value.scrapbookingItems[index][3],
                      onPressed: () =>
                          Provider.of<CartModel>(context, listen: false)
                              .addScrapbookingToCart(index),
                    ),
                    );
                  },
                );
              },
            ),

          ),

        ],
      ),
    );
  }
}