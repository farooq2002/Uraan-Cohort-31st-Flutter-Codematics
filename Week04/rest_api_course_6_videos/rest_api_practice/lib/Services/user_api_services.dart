import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/user_model.dart';

class ApiServices {
  static Future<List<UserModel>> fechtData() async {
    final response =
        await http.get(Uri.parse("https://randomuser.me/api/?results=5"));
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;

    final transform = results.map((e) {
      return UserModel.froMap(e);
    }).toList();
    return transform;
  }
}
