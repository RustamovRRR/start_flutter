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
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.purple,
          child: Text(
            "John Doe",
            textAlign: TextAlign.center,
          ),
          constraints: BoxConstraints(
              minHeight: 100, minWidth: 100, maxHeight: 300, maxWidth: 300),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.account_balance_sharp),
        ),
      ),
    );
  }
}
