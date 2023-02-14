import 'package:flutter/material.dart';

class MyClientInfoPage extends StatefulWidget {
  final List<String> data;
  final bool visibility;
  const MyClientInfoPage(
      {super.key, required this.data, required this.visibility});

  @override
  State<MyClientInfoPage> createState() => _MyClientInfoPageState();
}

class _MyClientInfoPageState extends State<MyClientInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Client Worksheet"),
      ),
      body: SizedBox(
          height: 400,
          child: ListView(
            children: widget.data
                .map((name) => Card(
                      child: ListTile(
                        title: Text(name.toUpperCase()),
                        trailing: widget.visibility
                            ? Icon(Icons.cancel)
                            : Icon(Icons.check),
                      ),
                    ))
                .toList(),
          )),
    );
  }
}
