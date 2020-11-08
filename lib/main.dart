import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:smart_garage/screens/homepage.dart';
import 'package:smart_garage/screens/sharepage.dart';
import 'package:smart_garage/style/global.dart';
import 'package:smart_garage/functions/functions.dart';

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

 

  setSelectedRadio2(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Align(
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment(0, -0.85),
                child: Text('Garage', style: garageTitle)),
            // * back button
            Align(
              alignment: Alignment(-0.91, -0.85),
              child: IconButton(
                  icon: Icon(Icons.arrow_back_ios_sharp),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Align(
                alignment: Alignment(0, -0.68),
                child: Text('Share Your Garage', style: addButton)),
            Align(
              alignment: Alignment(0, -0.55),
              child: Container(
                  width: 350,
                  child: TextField(
                      autofocus: true,
                      style: TextStyle(height: 1.5, fontSize: 18),
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Email to Share',
                        border: OutlineInputBorder(),
                      ))),
            ),
            Align(
              alignment: Alignment(0, 0.2),
              child: IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 65,
                  onPressed: () {
                    print("Added");
                  }),
            ),
            // * Radio buttons and their titles, permission time period/permission to use
            Align(
                alignment: Alignment(-0.9, -0.40),
                child: Text('Permission:', style: switchButton)),
            Align(
              alignment: Alignment(-0.9, -0.32),
              child: RadioListTile(
                  value: 1,
                  groupValue: selectedRadio,
                  activeColor: Colors.deepPurple,
                  title: Text("Once"),
                  onChanged: (val) {
                    print(val);
                    setSelectedRadio(val);
                    //setSelecteedButton(val):
                  }),
            ),
            Align(
              alignment: Alignment(-0.9, -0.25),
              child: RadioListTile(
                value: 2,
                groupValue: selectedRadio,
                activeColor: Colors.deepPurple,
                title: Text("Forever"),
                onChanged: (val) {
                  print(val);
                  setSelectedRadio(val);
                },
              ),
            ),
            Align(
                alignment: Alignment(-0.8, -0.15),
                child: Text('Ask for Permission?', style: switchButton)),
            Align(
              alignment: Alignment(-0.9, -0.07),
              child: RadioListTile(
                  value: 1,
                  groupValue: selectedRadio2,
                  activeColor: Colors.deepPurple,
                  title: Text("No"),
                  onChanged: (val) {
                    print(val);
                    setSelectedRadio2(val);
                    //setSelecteedButton(val):
                  }),
            ),
            Align(
              alignment: Alignment(-0.9, 0),
              child: RadioListTile(
                value: 2,
                groupValue: selectedRadio2,
                activeColor: Colors.deepPurple,
                title: Text("Yes"),
                onChanged: (val) {
                  print(val);
                  setSelectedRadio2(val);
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
