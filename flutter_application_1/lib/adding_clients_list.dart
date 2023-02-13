import 'package:flutter/material.dart';

class MyClientsPage extends StatefulWidget {
  const MyClientsPage({super.key});

  @override
  State<MyClientsPage> createState() => _MyClientsPageState();
}

class _MyClientsPageState extends State<MyClientsPage> {
  List<String> listOfClientName = [];
  var clientNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Company Orders"),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              TextField(
                controller: clientNameController,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      listOfClientName.add(clientNameController.text);
                    });
                  },
                  child: Text("Add"))
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: listOfClientName
              .map((name) => Card(
                    child: ListTile(
                      title: Text(name.toUpperCase()),
                      leading: Icon(Icons.person),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            listOfClientName.remove(name);
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  ))
              .toList(),
        ))
      ],
    );
  }
}
