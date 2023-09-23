import 'package:http/http.dart' as http;

import '../model/countries_api.dart';

class CountryApiServices {
  var client = http.Client();

  static var url = "https://restcountries.com/v3.1/all?fields=name,flags";

 static Future<List<CountryModel>> loadCountry() async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final countryModel = countryModelFromMap(response.body);
      return countryModel;
    } else {
      print("error occured ++++++++++++");
      //return countryModel;
    }
    return [];
  }
}
