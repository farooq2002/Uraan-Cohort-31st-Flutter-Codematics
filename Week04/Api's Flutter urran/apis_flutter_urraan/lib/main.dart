import 'package:apis_flutter_urraan/models/product_model.dart';
import 'package:apis_flutter_urraan/task.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:http/http.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const TaskTextWidget(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var client = http.Client();

  Future<List<ModelPost>>? postList;

  @override
  void initState() {
    super.initState();
    postList = loadData();
  }

  Future<List<ModelPost>> loadData() async {
    List<ModelPost> list = [];
    Uri uri = Uri.parse("https://fakestoreapi.com/products");

    http.Response response = await client.get(uri);

    if (response.statusCode == 200) {
      list = modelPostFromMap(response.body);
      return list;
    } else {
      return list;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            "Fake API'S",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: FutureBuilder(
          future: postList,
          builder: (context, AsyncSnapshot<List<ModelPost>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              const Center(
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    Text(
                      "Wait",
                      style: TextStyle(color: Colors.black, fontSize: 30,),
                    ),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    Text(
                      "Some Error Occured!",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ],
                ),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    var data = snapshot.data!;
                    return Card(
                      elevation: 4,
                      shadowColor: Colors.blueAccent,
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(data[index].image.toString()),
                          ),
                          trailing: Text(
                            '${data[index].price.toString()}\$',
                            style: const TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          subtitle: Text(data[index].title.toString()),
                          title: Text(data[index].category.toString())),
                    );
                  });
            } else {
              return const Text("Something happend!");
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
