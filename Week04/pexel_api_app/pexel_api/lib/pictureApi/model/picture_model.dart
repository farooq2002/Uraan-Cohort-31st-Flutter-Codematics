// To parse this JSON data, do
//
//     final pictureModel = pictureModelFromMap(jsonString);

import 'dart:convert';

PictureModel pictureModelFromMap(String str) => PictureModel.fromMap(json.decode(str));

String pictureModelToMap(PictureModel data) => json.encode(data.toMap());

class PictureModel {
    bool? success;
    int? totalPhotos;
    String? message;
    int? offset;
    int? limit;
    List<Photo>? photos;

    PictureModel({
        this.success,
        this.totalPhotos,
        this.message,
        this.offset,
        this.limit,
        this.photos,
    });

    factory PictureModel.fromMap(Map<String, dynamic> json) => PictureModel(
        success: json["success"],
        totalPhotos: json["total_photos"],
        message: json["message"],
        offset: json["offset"],
        limit: json["limit"],
        photos: json["photos"] == null ? [] : List<Photo>.from(json["photos"]!.map((x) => Photo.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "success": success,
        "total_photos": totalPhotos,
        "message": message,
        "offset": offset,
        "limit": limit,
        "photos": photos == null ? [] : List<dynamic>.from(photos!.map((x) => x.toMap())),
    };
}

class Photo {
    String? description;
    String? url;
    String? title;
    int? id;
    int? user;

    Photo({
        this.description,
        this.url,
        this.title,
        this.id,
        this.user,
    });

    factory Photo.fromMap(Map<String, dynamic> json) => Photo(
        description: json["description"],
        url: json["url"],
        title: json["title"],
        id: json["id"],
        user: json["user"],
    );

    Map<String, dynamic> toMap() => {
        "description": description,
        "url": url,
        "title": title,
        "id": id,
        "user": user,
    };
}
