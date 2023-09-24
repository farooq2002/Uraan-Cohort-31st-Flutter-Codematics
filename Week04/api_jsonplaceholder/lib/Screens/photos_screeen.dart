import 'dart:convert';

import 'package:api_jsonplaceholder/models/photos_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({super.key});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  List<PhotoModel> photoList = [];
  Future<List<PhotoModel>> getPhotos() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      for (Map i in data) {
        PhotoModel photos = PhotoModel(title: i['title'], url: i['url']);
        photoList.add(photos);
      }
      return photoList;
    } else {
      return photoList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Photos")),
      body: FutureBuilder(
        future: getPhotos(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Column(
                children: [Text("LOADING"), CircularProgressIndicator()],
              ),
            );
          } else if (snapshot.hasData) {
            return ListView.builder(itemBuilder: (context, index) {
              var snap = photoList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                child: Card(
                  child: ListTile(
                    leading: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.network(snap.url)),
                    title: Text(snap.title.toString()),
                  ),
                ),
              );
            });
          } else {
            return const Center(child: Text("Loading"));
          }
        },
      ),
    );
  }
}
