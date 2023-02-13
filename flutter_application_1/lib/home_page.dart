import 'package:flutter/material.dart';
import 'package:flutter_application_1/about_page.dart';
import 'package:flutter_application_1/adding_clients_list.dart';

class MyHomePage extends StatelessWidget {
  final String value;
  const MyHomePage({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pralee Technology and Games"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.logout)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const MyAboutPage()));
              },
              icon: Icon(Icons.info)),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Text(
                "Welcome $value",
                style: TextStyle(fontSize: 25),
              ),
              const Text("Company Orders"),
              // const MyClientsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
