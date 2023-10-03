import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostApiSignUp extends StatefulWidget {
  const PostApiSignUp({super.key});

  @override
  State<PostApiSignUp> createState() => _PostApiSignUpState();
}

class _PostApiSignUpState extends State<PostApiSignUp> {
  final email = TextEditingController();
  final password = TextEditingController();

  void login(email, password) async {
    var client = http.Client();
    try {
      http.Response response = await client.post(
          Uri.parse("https://reqres.in/api/register"),
          body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        print("Accont created Success!");
      } else {
        print("Account creation failed!");
      }
    } catch (E) {
      print("somethinng happen");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Api"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                hintText: "Email",
                prefixIcon: Icon(Icons.gamepad),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                login(email.text.toString(), password.text.toString());
              },
              child: Container(
                height: 45,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(child: Text('Save')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
