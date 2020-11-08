import 'package:flutter/material.dart';
import 'package:smart_garage/style/global.dart';
import 'package:smart_garage/style/pieces.dart';
import 'package:smart_garage/functions/functions.dart';


homePage(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,

    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top:45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(iconSize: 55, icon: Icon(Icons.settings)),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                child: Text('Garage', style: garageTitle)),
              IconButton(
                icon: Icon(Icons.ios_share),
                iconSize: 55,
                onPressed: () {
                  navigateToSharePage(context);
              }),
            ],
          ),
        ),
        
        Container(
          margin: EdgeInsets.only(top:60),
          child: garageStatus(2),
        ),
        Container(
          margin: EdgeInsets.only(top:25),
          child: openButton(2),
        ),
        Container(
          height: 300,
          margin:EdgeInsets.only(top:30, left: 15, right: 15),
          decoration: BoxDecoration (
            border: Border.all(color: Colors.black87),
            borderRadius: BorderRadius.all(Radius.circular(30))
            ),
          child: Column(
            children:[ 
              Text('Activity Log', style: addButton),
              garageActivity()

           ]
          )
            )
            
          
          

      
      ],
    ),
  );
}
