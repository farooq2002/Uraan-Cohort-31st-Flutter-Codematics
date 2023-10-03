import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';
import '../Models/world_state_model.dart';
import '../services/world_state_services.dart';

class CountriesList extends StatefulWidget {
  const CountriesList({super.key});

  @override
  State<CountriesList> createState() => _CountriesListState();
}

class _CountriesListState extends State<CountriesList> {
  @override
  Widget build(BuildContext context) {
    WorldStateServices services = WorldStateServices();
    final searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      labelText: "Search Country by name ...",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              Expanded(
                child: FutureBuilder(
                    future: services.fetchCountries(),
                    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) {
                              var countryInfo =
                                  snapshot.data![index]['countryInfo'];
                              var countryName =
                                  snapshot.data![index]['country'];
                              String cName = snapshot.data![index]['country'];
                              if (searchController.text.isEmpty) {
                                return Card(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                        backgroundImage:
                                            NetworkImage(countryInfo['flag'])),
                                    title: Text(countryName),
                                    subtitle: Text(
                                        "Cases : ${snapshot.data![index]['cases'].toString()}"),
                                  ),
                                );
                              } else if (cName.toLowerCase().contains(
                                  searchController.text.toLowerCase())) {
                                return Card(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                        backgroundImage:
                                            NetworkImage(countryInfo['flag'])),
                                    title: Text(countryName),
                                    subtitle: Text(
                                        "Cases : ${snapshot.data![index]['cases'].toString()}"),
                                  ),
                                );
                              }
                            });
                      } else {
                        return Shimmer.fromColors(
                            highlightColor: Colors.grey.shade100,
                            baseColor: Colors.grey.shade700,
                            child: ListView.builder(
                                itemCount: 7,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      ListTile(
                                          leading: const CircleAvatar(),
                                          title: Container(
                                            height: 10,
                                            width: 80,
                                            color: Colors.white,
                                          ),
                                          subtitle: Container(
                                            height: 10,
                                            width: 80,
                                            color: Colors.white,
                                          ))
                                    ],
                                  );
                                }));
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
