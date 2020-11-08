import 'package:flutter/material.dart';
import 'package:smart_garage/style/global.dart';
import 'package:smart_garage/functions/functions.dart';

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
// ! garage open/closed button
          Align(
            alignment: Alignment.center,
            child: MaterialButton(
                height: 300,
                color: Colors.white12,
                minWidth: 300,
                shape: StadiumBorder(),
                child: Text(buttonStatus(), style: garageButton),
                splashColor: Colors.grey,
                onPressed: () {
                  changeGarageStatus();
                }),
          ),
          Align(
            alignment: Alignment(0.925, -0.875),
            child: IconButton(
                icon: Icon(Icons.ios_share),
                iconSize: 55,
                onPressed: () {
                  navigateToSharePage(context);
                }),
          ),
          Align(
            alignment: Alignment(-0.925, -0.875),
            child: IconButton(iconSize: 55, icon: Icon(Icons.settings)),
          ),
        ],
      ),
    ),
  );
}
