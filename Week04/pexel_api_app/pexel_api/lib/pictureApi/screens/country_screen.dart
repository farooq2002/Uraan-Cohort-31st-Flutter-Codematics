import 'package:flutter/material.dart';
import 'package:pexel_api/pictureApi/services/countr_api_services.dart';

import '../model/countries_api.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  Future<List<CountryModel>>? _future;
  @override
  void initState() {
    super.initState();
    setState(() {
      _future = CountryApiServices.loadCountry();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Country Api",
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder(
        future: _future,
        builder: (context, AsyncSnapshot<List<CountryModel>> snapshot) {
          return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                var snap = snapshot.data?[index];
                print('imaaaaaage :  ${snap?.name?.official}');
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.network(
                          snap!.flags!.png.toString(),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(snap.name!.official.toString())
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
