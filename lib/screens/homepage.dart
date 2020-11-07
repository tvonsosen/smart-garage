import 'package:flutter/material.dart';
import 'package:smartgarage/style/global.dart';
import 'package:smartgarage/functions/functions.dart';

homePage(BuildContext context) {
  return Container(
    child: Align(
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          //Text('Garage', style: garageTitle),
          Align(
              alignment: Alignment(0, -0.85),
              child: Text('Garage', style: garageTitle)),

          Align(
              alignment: Alignment.center,
              child: MaterialButton(
                height: 300,
                color: Colors.white12,
                minWidth: 300,
                shape: StadiumBorder(),
                child: Text('OPEN', style: garageButton),
                splashColor: Colors.grey,
                onPressed: () {
                  Text('CLOSED');
                }),
          ),
          

        ],
      ),
    ),
  );
}
