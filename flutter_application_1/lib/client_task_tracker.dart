import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';

class ClientTaskTracker extends StatelessWidget {
  const ClientTaskTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "Client Task Tracker",
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Pralee Technology and Games"),
          ),
          body: const MyLoginPage()),
    );
  }
}
