import 'package:flutter/material.dart';
import 'package:flutter_application_1/requirement.dart';

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
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400,
                  child: TextField(
                    controller: clientNameController,
                    decoration:
                        const InputDecoration(labelText: "Enter Client Name"),
                  ),
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MyRequirementPage(
                                        value: name,
                                      )));
                        },
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
      ),
    );
  }
}
