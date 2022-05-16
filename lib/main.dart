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
        body: Center(
          child: Container(
            color: Colors.red,
            width: 300,
            height: 300,
            // alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              color: Color.fromARGB(255, 11, 118, 206),
              width: 100,
              height: 100,
              margin: EdgeInsets.all(20),
              child: Text('Test'),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.account_balance_sharp),
        ),
      ),
    );
  }
}
