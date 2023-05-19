import 'package:flutter/material.dart';

import 'package:resumeportfolio/widgets/profolioDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "google sans regula"),
      home: const profolioDetails(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Widget> _messages = <Widget>[const Text('hello'), const Text('world')];
//   ScrollController _scrollController = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           decoration: BoxDecoration(color: Colors.blueGrey.shade100),
//           width: 100.0,
//           height: 100.0,
//           child: Column(
//             children: [
//               Flexible(
//                 child: ListView(
//                   controller: _scrollController,
//                   reverse: true,
//                   shrinkWrap: true,
//                   children: UnmodifiableListView(_messages),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: () {
//             setState(() {
//               _messages.insert(0, Text("message ${_messages.length}"));
//             });
//             _scrollController.animateTo(
//               0.0,
//               curve: Curves.easeOut,
//               duration: const Duration(milliseconds: 300),
//             );
//           }),
//     );
//   }
// }
