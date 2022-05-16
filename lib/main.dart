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
          height: 400,
          child: Row(
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
