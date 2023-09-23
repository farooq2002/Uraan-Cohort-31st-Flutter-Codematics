import 'package:http/http.dart' as http;

import '../model/picture_model.dart';

class ApiPictureServices {
  var client = http.Client();
  static List<Photo> photList = [];

  static var url =
      "https://api.slingacademy.com/v1/sample-data/photos?offset=5&limit=20";

  static Future<List<Photo>> fetchData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      PictureModel pictureModel = pictureModelFromMap(response.body);
      return pictureModel.photos ?? [];
    }
    return [];
  }
}
