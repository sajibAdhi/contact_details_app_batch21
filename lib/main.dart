import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Contact Details'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  CustomHeader(text: 'Present Address'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class CustomHeader extends StatelessWidget {
  final String text;
  const CustomHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 180),
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

class CustomField extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomField({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.black,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),),
    );
  }
}