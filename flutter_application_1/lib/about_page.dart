import 'package:flutter/material.dart';

class MyAboutPage extends StatefulWidget {
  const MyAboutPage({super.key});

  @override
  State<MyAboutPage> createState() => _MyAboutPageState();
}

class _MyAboutPageState extends State<MyAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("About"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("We believe that"),
            Text("Technology should be accessible and enjoyable for everyone"),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: Center(
                        child: Text(
                          "Simplicity",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: Center(
                        child: Text(
                          "Quality",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: Center(
                        child: Text(
                          "Passions",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: Center(
                        child: Text(
                          "Innovation",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: Center(
                        child: Text(
                          "Fun",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: Center(
                        child: Text(
                          "Our People",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
