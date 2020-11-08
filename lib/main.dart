import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:smart_garage/screens/homepage.dart';
import 'package:smart_garage/screens/sharepage.dart';
import 'package:smart_garage/style/global.dart';
import 'package:smart_garage/functions/functions.dart';
import 'package:smart_garage/style/pieces.dart';

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
  int selectedRadio;
  int selectedRadio2;
// ! this is to initialize state, and select selected raido value when radio button is clicked
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadio2 = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  setSelectedRadio2(int val1) {
    setState(() {
      selectedRadio2 = val1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 45),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios_sharp),
                      iconSize: 50,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Text('Garage', style: garageTitle)),
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios_sharp),
                      color: Colors.white,
                      iconSize: 50,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  // * back button
                ],
              ),
            ),
            Container(
              width: 375,
              child: Column(
                children: [
                  Text('Share Your Garage', style: addButton),

                  TextField(
                      autofocus: true,
                      style: TextStyle(height: 1.5, fontSize: 18),
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Email to Share',
                        border: OutlineInputBorder(),
                      )),

                  // * Radio buttons and their titles, permission time period/permission to use
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text('Permission:', style: switchButton),
                        RadioListTile(
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: Colors.deepPurple,
                            title: Text("24 hours"),
                            onChanged: (val) {
                              print(val);
                              setSelectedRadio(val);
                              //setSelecteedButton(val):
                            }),
                        RadioListTile(
                          value: 2,
                          groupValue: selectedRadio,
                          activeColor: Colors.deepPurple,
                          title: Text("Forever"),
                          onChanged: (val) {
                            print(val);
                            setSelectedRadio(val);
                          },
                        ),
                        Text('Ask for Permission?', style: switchButton),
                        RadioListTile(
                            value: 3,
                            groupValue: selectedRadio2,
                            activeColor: Colors.deepPurple,
                            title: Text("No"),
                            onChanged: (val1) {
                              print(val1);
                              setSelectedRadio2(val1);
                            }),
                        RadioListTile(
                          value: 4,
                          groupValue: selectedRadio2,
                          activeColor: Colors.deepPurple,
                          title: Text("Yes"),
                          onChanged: (val1) {
                            print(val1);
                            setSelectedRadio2(val1);
                          },
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.add),
                      iconSize: 65,
                      onPressed: () {
                        addEmail();
                      }),
                  Container(
                      height: 275,
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Shared with:', style: addButton),
                            IconButton(
                                icon: Icon(Icons.edit),
                                iconSize: 35,
                                onPressed: () {
                                  editEmails();
                                })],),
                        shareLog()
                      ]))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
