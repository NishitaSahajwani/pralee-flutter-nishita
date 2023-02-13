import 'package:flutter/material.dart';
import 'dart:math';
// import 'package:flutter_application_1/MyFirstApp.dart';
import 'package:flutter_application_1/client_task_tracker.dart';

void main() {
  runApp(const ClientTaskTracker());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title, required String value});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   var rng = Random();

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _incrementByfive() {
//     setState(() {
//       _counter = _counter + 5;
//     });
//   }

//   void _decrementByfive() {
//     setState(() {
//       _counter = _counter - 5;
//     });
//   }

//   void incrementByRandom() {
//     setState(() {
//       _counter = _counter + rng.nextInt(15);
//     });
//   }

//   void decrementByRandom() {
//     setState(() {
//       _counter = _counter - rng.nextInt(15);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             ElevatedButton(
//                 onPressed: _incrementByfive, child: Text("Increment 5")),
//             ElevatedButton(
//                 onPressed: _decrementByfive, child: Text("Decrement 5")),
//             ElevatedButton(
//                 onPressed: incrementByRandom, child: Text("Increment random")),
//             ElevatedButton(
//                 onPressed: decrementByRandom, child: Text("Decrement random")),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
