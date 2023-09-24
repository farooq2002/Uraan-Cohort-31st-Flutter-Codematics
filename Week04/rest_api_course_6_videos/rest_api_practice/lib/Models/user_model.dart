

import 'package:rest_api_practice/Models/user_dob.dart';
import 'package:rest_api_practice/Models/user_location.dart';
import 'package:rest_api_practice/Models/user_picture.dart';

class UserModel {
  final String gender;
  final String email;
  final String cell;
  final String phone;
  final String nat;
  final UserName userName;
  final UserDob userDob;
  final UserLocation userLocation;
  final UserPicture userPicture;

  UserModel(
      {required this.gender,
      required this.email,
      required this.cell,
      required this.phone,
      required this.nat,
      required this.userName,
      required this.userDob,
      required this.userLocation,
      required this.userPicture});

  factory UserModel.froMap(Map<String, dynamic> e) {
    final name = UserName(
        title: e['name']['title'],
        first: e['name']['first'],
        last: e['name']['last']);
    final date = e['dob']['date'];

    final dob = UserDob(age: e['dob']['age'], date: DateTime.parse(date));
    final location = UserLocation.fromMap(e);
    final picture = UserPicture.fromMap(e);
    return UserModel(
        gender: e['gender'],
        email: e['email'],
        cell: e['cell'],
        phone: e['phone'],
        nat: e['nat'],
        userName: name,
        userDob: dob,
        userLocation: location,
        userPicture: picture);
  }

  String get fullName {
    return "${userName.title} ${userName.first} ${userName.last}";
  }
}

class UserName {
  final String title;
  final String first;
  final String last;

  UserName({required this.title, required this.first, required this.last});
}
