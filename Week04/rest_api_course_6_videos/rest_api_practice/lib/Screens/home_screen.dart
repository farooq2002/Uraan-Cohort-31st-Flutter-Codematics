
import 'package:flutter/material.dart';

import 'package:rest_api_practice/Models/user_model.dart';

import '../Services/user_api_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserModel> userList = [];
  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Api"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_alert),
        ),
        body: ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              final users = userList[index];

              final color = users.gender == 'female'
                  ? const Color.fromARGB(255, 83, 233, 69)
                  : Colors.amber;

              return Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(users.userPicture.medium),
                  ),
                  tileColor: color,
                  title: Text(
                    users.userLocation.country.toString(),
                  ),
                  trailing: Text(users.userDob.age.toString()),
                  subtitle: Text(users.email),
                ),
              );
            }));
  }

  Future<void> fetchUser() async {
    final response = await ApiServices.fechtData();
    setState(() {
      userList = response;
    });
  }
}
