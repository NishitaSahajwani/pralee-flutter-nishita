import 'package:flutter/material.dart';

class MyFirstAP extends StatelessWidget {
  const MyFirstAP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
          actions: [
            IconButton(
                onPressed: () {
                  const Text("pressed");
                },
                icon: const Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: Column(
            children: [
              const Text(
                "Welcome!",
                style: TextStyle(fontSize: 30.0),
              ),
              const Text("Name: Nishita", style: TextStyle(fontSize: 30.0)),
              const Text("Surname: Sahajwani",
                  style: TextStyle(fontSize: 30.0)),
              const Text("contact: 123", style: TextStyle(fontSize: 30.0)),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: const Text("Ok")),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: const Text("Cancel")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Help"),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.add),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
