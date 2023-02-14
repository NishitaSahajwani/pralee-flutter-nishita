import 'package:flutter/material.dart';
import 'package:flutter_application_1/client_info.dart';

class MyRequirementPage extends StatefulWidget {
  final String value;
  const MyRequirementPage({super.key, required this.value});

  @override
  State<MyRequirementPage> createState() => _MyRequirementPageState();
}

class _MyRequirementPageState extends State<MyRequirementPage> {
  List<String> listOfRequirement = [];
  var requirementController = TextEditingController();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.value),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => MyClientInfoPage(
                            data: listOfRequirement, visibility: isVisible)));
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: SizedBox(
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
                      controller: requirementController,
                      decoration: const InputDecoration(
                          labelText: "Enter Requirements"),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          listOfRequirement.add(requirementController.text);
                        });
                      },
                      child: Text("Add"))
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: listOfRequirement
                  .map((name) => Card(
                        child: ListTile(
                          title: Text(name.toUpperCase()),
                          leading: isVisible
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  icon: Icon(Icons.cancel))
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  icon: Icon(Icons.check)),
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                listOfRequirement.remove(name);
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
      ),
    );
  }
}
