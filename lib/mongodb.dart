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
//       "username":"dilyara2591",
//       "name":"dilyara",
//       "email":"dilyara@mail.ru"
//     },{
//       "username":"karakat2922",
//       "name":"karakat",
//       "email":"karakat@nkjs.ru"
//     }]);
//     print(await collection.find().toList());
//   }
// }