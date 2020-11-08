import 'package:flutter/material.dart';
import 'package:smart_garage/style/global.dart';
import 'package:smart_garage/functions/functions.dart';
import 'package:smart_garage/screens/homepage.dart';
import 'package:smart_garage/main.dart';

import '../style/global.dart';
import '../style/global.dart';

// ! Share Page on Main.dart now due to difficulties involving radio button

theSharePage(BuildContext context) {
  int selectedRadio;
  
  return Container(
    child: Align(
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(0, -0.85),
              child: Text('Garage', style: garageTitle)),
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
            alignment: Alignment(0, -0.1),
            child: IconButton(
                icon: Icon(Icons.add),
                iconSize: 65,
                onPressed: () {
                  print("Added");
                }),
          ),
          // Align(
          //   alignment: Alignment(-0.9, -0.35),
          //   child: Switch(
          //       value: false,
          //       onChanged: (value) {
          //         setState(() {
          //           _value = value;
          //         });
          //       }),
          // ),
          // Align(
          //   alignment: Alignment(-0.15, -0.345),
          //   child: Text('Permisson: Once/Forever', style: switchButton),
          //   // ! Maybe when checked have it say forever instead of once or change text to specify both
          // ),
          // Align(
          //   alignment: Alignment(-0.9, -0.25),
          //   child: Switch(
          //     value: false,
          //   ),
          // ),
          // Align(
          //   alignment: Alignment(-0.33, -0.245),
          //   child: Text('Ask for Permission', style: switchButton),
          //   // ! When checked have it say forever instead of once or change text to specify both
          // ),
          Align(
              alignment: Alignment(-0.9, -0.40),
              child: Text('Permission', style: switchButton)),
          // Align(
          //   alignment: Alignment(-0.9, -0.35),
          //   child: RadioListTile(
          //       value: 1,
          //       groupValue: selectedRadio,
          //       activeColor: Colors.deepPurple,
          //       title: Text("Once"),
          //       onChanged: (val) {
          //         print(val)
          //         setSelectedRadio(val);
          //         //setSelecteedButton(val):
          //       }),
          // ),
        ],
      ),
    ),
  );
}
