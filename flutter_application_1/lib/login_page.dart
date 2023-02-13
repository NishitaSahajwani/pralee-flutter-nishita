import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/main.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 500,
            child: TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: "User name",
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: 500,
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(labelText: "Password"),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
              onPressed: () {
                if (usernameController.text == "nishita" &&
                    passwordController.text == "123") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              MyHomePage(value: usernameController.text)));
                } else {
                  // Text("Please enter correct details");
                  const AlertDialog(
                    title: Text("Alert Message"),
                    content: Text('Please enter correct details'),
                  );
                }
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
