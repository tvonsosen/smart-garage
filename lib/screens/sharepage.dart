import 'package:flutter/material.dart';
import 'package:smartgarage/style/global.dart';
import 'package:smartgarage/functions/functions.dart';
import 'package:smartgarage/main.dart';

import '../style/global.dart';
import '../style/global.dart';

int _selectedTime = 1;

theSharePage(BuildContext context) {
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
                iconSize: 65,
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
    
          Align(
            alignment: Alignment(0, -0.65),
            child: Text('Share Your Garage', style: addButton)
          ),
          Align(
            alignment: Alignment(0, -0.55),

            child: TextField(
              autofocus: true,
              style: TextStyle(height:1.5, fontSize: 18),
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Email to Share',
                border: OutlineInputBorder(),
              )
            )
            ),
         
          Align(
            alignment: Alignment(0,-0.3),
            child: IconButton(
              icon: Icon(Icons.add),
              iconSize: 70,
              
              onPressed: () {
                print("Added");
            }),
          ),
        ],
      ),
    ),
  );
}
