import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pexel_api/pictureApi/services/pic_api_services.dart';
import '../model/picture_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<Photo>>? _future;

  @override
  void initState() {
    super.initState();
    _future = ApiPictureServices.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Center(
            child: Text(
          "Picture Api",
          style: TextStyle(color: Colors.white),
        )),
      ),
      backgroundColor: Colors.purple[100],
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: FutureBuilder(
              future: _future,
              builder: (context, AsyncSnapshot<List<Photo>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text("No data available!"),
                  );
                } else {
                  return ListView.separated(
                    itemCount: snapshot.data!.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      var snap = snapshot.data![index];
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Image.network(snap.url.toString()),
                              Text(
                                snap.title.toString(),
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(snap.description.toString())
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
