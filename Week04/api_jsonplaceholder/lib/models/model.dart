// To parse this JSON data, do
//
//     final postModel = postModelFromMap(jsonString);

import 'dart:convert';

List<PostModel> postModelFromMap(String str) => List<PostModel>.from(json.decode(str).map((x) => PostModel.fromMap(x)));

String postModelToMap(List<PostModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class PostModel {
    int? userId;
    int? id;
    String? title;
    String? body;

    PostModel({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    factory PostModel.fromMap(Map<dynamic, dynamic> json) => PostModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
