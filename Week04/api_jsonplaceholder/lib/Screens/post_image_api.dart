import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostApiImage extends StatefulWidget {
  const PostApiImage({super.key});

  @override
  State<PostApiImage> createState() => _PostApiImageState();
}

class _PostApiImageState extends State<PostApiImage> {
  File? image;
  final _picker = ImagePicker();
  bool showSpinner = false;
  Future getImage() async {
    final pickedFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      setState(() {});
    } else {
      print("image is not selected!");
    }
  }

  Future<void> uploadImage() async {
    setState(() {
      showSpinner = true;
    });

    var stream = http.ByteStream(image!.openRead());
    stream.cast();
    var lenght = await image!.length();

    var uri = Uri.parse("https://fakestoreapi.com/products");
    var request = http.MultipartRequest("POST", uri);
    request.fields['title'] = "static title";
    var multiport = http.MultipartFile('image', stream, lenght);
    request.files.add(multiport);
    var response = await request.send();
    if (response.statusCode == 200) {
      setState(() {
        showSpinner = false;
      });
      print("Image uploaded successfully!");
    } else {
      setState(() {
        showSpinner = false;
      });
      print("Image is not selected");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Image Post Api"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: image == null
                      ? InkWell(
                          onTap: () => getImage(),
                          child: const Center(
                            child: Card(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Pick Image"),
                            )),
                          ),
                        )
                      : Container(
                          color: Colors.blue,
                          height: 200,
                          width: 200,
                          child: Image.file(File(image!.path).absolute),
                        ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => uploadImage(),
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: const Center(
                      child: Text("upload"),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
