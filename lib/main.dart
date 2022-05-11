import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.teal,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.red)),
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Text("Hello World",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.account_balance_sharp),
        ),
      ),
    );
  }
}
