import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:smartgarage/screens/homepage.dart';
import 'package:smartgarage/screens/sharepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: homePage(context));
  }
}

class SharePage extends StatefulWidget {
  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  Widget build(BuildContext context) {
    return Scaffold(body: theSharePage(context));
  }

 
}


Future navigateToSharePage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SharePage()));
}


