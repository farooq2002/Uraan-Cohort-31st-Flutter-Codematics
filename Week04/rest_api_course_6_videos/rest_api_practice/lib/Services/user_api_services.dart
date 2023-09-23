import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/user_model.dart';

class ApiServices {
  static Future<List<UserModel>> fechtData() async {
    const url = "https://randomuser.me/api/?results=5";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;

    final transform = results.map((e) {
      return UserModel.froMap(e);
    }).toList();
    return transform;
  }
}
