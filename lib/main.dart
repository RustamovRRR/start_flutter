import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img =
      "https://besthqwallpapers.com/Uploads/3-7-2019/98955/thumb2-flag-of-germany-concrete-texture-stone-background-germany-flag-europe.jpg";
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
        body: Container(
          color: Colors.teal.shade100,
          // height: 400,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: flexibleContainerler,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.account_balance_sharp),
        ),
      ),
    );
  }

  List<Widget> get containerler {
    return [
      Container(
        color: Colors.red,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.orange,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.blue,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.brown,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.blue,
        width: 75,
        height: 75,
      ),
      Container(
        color: Colors.brown,
        width: 75,
        height: 75,
      ),
    ];
  }
}

List<Widget> get flexibleContainerler {
  return [
    Flexible(
      child: Container(
        color: Colors.blue,
        width: 100,
        height: 300,
      ),
    ),
    Flexible(
      child: Container(
        color: Colors.brown,
        width: 300,
        height: 300,
      ),
    ),
  ];
}

List<Widget> get expandedContainerler {
  return [
    Expanded(
      flex: 2,
      child: Container(
        color: Colors.red,
        width: 75,
        height: 75,
      ),
    ),
    Expanded(
      child: Container(
        color: Colors.orange,
        width: 75,
        height: 75,
      ),
    ),
    Expanded(
      child: Container(
        color: Colors.blue,
        width: 75,
        height: 75,
      ),
    ),
    Expanded(
      child: Container(
        color: Colors.brown,
        width: 75,
        height: 75,
      ),
    ),
  ];
}

class RowExample extends StatelessWidget {
  const RowExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.add_circle,
          size: 64,
          color: Colors.green,
        ),
        Icon(
          Icons.add_circle,
          size: 64,
          color: Colors.orange,
        ),
        Icon(
          Icons.add_circle,
          size: 64,
          color: Colors.red,
        ),
        Icon(
          Icons.add_circle,
          size: 64,
          color: Colors.yellow,
        ),
      ],
    );
  }
}

class ContainerDersleri extends StatelessWidget {
  const ContainerDersleri({
    Key? key,
    required String img,
  })  : _img = img,
        super(key: key);

  final String _img;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          'Germany',
          style: TextStyle(fontSize: 36),
        ),
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            shape: BoxShape.rectangle,
            border: Border.all(
                color: Colors.brown, style: BorderStyle.solid, width: 4),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            image: DecorationImage(
              image: NetworkImage(_img),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(20, 30),
                blurRadius: 10,
              )
            ]),
      ),
    );
  }
}
