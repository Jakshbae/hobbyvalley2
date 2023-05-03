// import 'dart:developer';
//
// import 'package:hobby_valley2/constant.dart';
// import 'package:hobby_valley2/constmongo.dart';
// import 'package:mongo_dart/mongo_dart.dart';
//
// class MongoDatabase {
//   static connect() async{
//     var db = await Db.create(MONGO_URL);
//     await db.open();
//     inspect(db);
//     var status = db.serverStatus();
//     print(status);
//     var collection = db.collection(COLLECTION_NAME);
//     await collection.insertMany([{
//       "productname":"Knitting Yarn",
//       "price":"5.52"
//
//     },{
//       "productname":"Crochet Hook",
//       "price":"2.50"
//     },{
//       "productname":"Marker",
//       "price":"1.00"
//     }]);
//     print(await collection.find().toList());
//   }
// }