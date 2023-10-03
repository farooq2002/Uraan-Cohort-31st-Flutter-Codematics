import 'dart:convert';
import 'package:covid_tracker_flutter/Models/world_state_model.dart';
import 'package:covid_tracker_flutter/services/utilitis/app_urls.dart';
import 'package:http/http.dart' as http;

class WorldStateServices {
  Future<WorldStatesModel> fetchData() async {
    final response = await http.get(Uri.parse(AppUrls.baseUrl));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return WorldStatesModel.fromMap(data);
    } else {
      throw ('No data found!');
    }
  }

  Future<List<dynamic>> fetchCountries() async {
    var data;
    final response = await http.get(Uri.parse(AppUrls.countryWiseList));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    } else {
      throw ('No data found!');
    }
  }
}
