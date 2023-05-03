import 'package:flutter/material.dart';
import 'package:hobby_valley2/models/card_model.dart';
import 'package:hobby_valley2/screens/welcome_screen.dart';
import 'package:hobby_valley2/screens/wishList.dart';
import 'package:provider/provider.dart';
import 'mongodb.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartModel>(create: (context) => CartModel()),
      ],

    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    routes: {

        '/wishlist': (context) => WishlistPage(
      items: ModalRoute.of(context)?.settings.arguments as List<String>? ?? [],
    ),},
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    ),
    );
  }
}

