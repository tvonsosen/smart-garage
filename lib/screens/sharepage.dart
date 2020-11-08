import 'package:flutter/material.dart';
import 'package:smartgarage/style/global.dart';
import 'package:smartgarage/functions/functions.dart';
import 'package:smartgarage/main.dart';

import '../style/global.dart';
import '../style/global.dart';

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
              child: TextField(
                  autofocus: true,
                  style: TextStyle(height: 1.5, fontSize: 18),
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email to Share',
                    border: OutlineInputBorder(),
                  ))),
          Align(
            alignment: Alignment(0, -0.25),
            child: IconButton(
                icon: Icon(Icons.add),
                iconSize: 65,
                onPressed: () {
                  print("Added");
                }),
          ),

          Align(
            alignment: Alignment(-0.3, -0.35),
            child: Switch(
              value: true
              ),
          

          // Align(
          //     alignment: Alignment(-0.3, -0.35),
          //     child: RadioListTile(
          //         value: 2,
          //         groupValue: selectedRadioTile,
          //         subtitle: Text("Once"),
          //         onChanged: (val) {
          //           print('Once');
          //             setSelectedRadioTile(val);
          //         },
          //         activeColor: Colors.deepPurple,
          //         selected: false
          //         ),
                  
          //         ),
           ),
         ],
      ),
    ),
  );
}
