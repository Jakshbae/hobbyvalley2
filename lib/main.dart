import 'package:flutter/material.dart';
import 'package:hobby_valley2/models/card_model.dart';
import 'package:hobby_valley2/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    ),
    );
  }
}

