// import 'package:mongo_dart/mongo_dart.dart';
//
// import '../models/hobby_dart.dart';
//
// class UserService {
//   final Db _db;
//
//   UserService(this._db);
//
//   Future<void> addUser(Hobby user) async {
//     final userCollection = _db.collection('users');
//     await userCollection.insertOne({
//       'user_f_name': user.user_f_name,
//       'email': user.email,
//       'password': user.password,
//       'user_s_name':user.user_s_name,
//       'phone_number':user.phone_number
//     });
//   }
//
//   Future<Hobby?> getUserByEmail(String email) async {
//     final userCollection = _db.collection('users');
//     final userDocument = await userCollection.findOne({'email': email});
//     if (userDocument == null) {
//       return null;
//     }
//     return Hobby(
//       user_s_name: userDocument['user_s_name'] as String,
//       email: userDocument['email'] as String,
//       password: userDocument['password'] as String,
//       user_f_name: userDocument['user_f_name'] as String,
//       phone_number: userDocument['phone_number'] as String
//     );
//   }
// }