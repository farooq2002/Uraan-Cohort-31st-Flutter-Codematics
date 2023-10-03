import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignInPostApi extends StatefulWidget {
  const SignInPostApi({super.key});

  @override
  State<SignInPostApi> createState() => _SignInPostApiState();
}

class _SignInPostApiState extends State<SignInPostApi> {
  final email = TextEditingController();
  final password = TextEditingController();

  void signIn(email, password) async {
    var client = http.Client();
    http.Response response = await client.post(
        Uri.parse("https://reqres.in/api/login"),
        body: {"email": email, "password": password});
    if (response.statusCode == 200) {
      print("MESSAGE :  Login succesful");
    } else {
      print("MESSAGE   : login failed!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Sign In'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: TextField(
                controller: email,
                decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.mail_outline),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: TextField(
                controller: password,
                decoration: const InputDecoration(
                  // hintText: "Password",
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                signIn(email.text.toString(), password.text.toString());
              },
              child: Container(
                height: 45,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                    child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
