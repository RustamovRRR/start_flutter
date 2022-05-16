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
          // alignment: Alignment.center,
          color: Colors.purple,
          width: 200,
          height: 600,
          child: Text(
            "John Doe",
            textAlign: TextAlign.center,
          ),
          // constraints: BoxConstraints(
          //     minHeight: 100, minWidth: 100, maxHeight: 300, maxWidth: 300),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          padding: EdgeInsets.all(60),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.account_balance_sharp),
        ),
      ),
    );
  }
}
