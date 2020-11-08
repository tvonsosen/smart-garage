import 'package:flutter/material.dart';
import 'package:smart_garage/style/global.dart';
import 'package:smart_garage/style/pieces.dart';
import 'package:smart_garage/functions/functions.dart';

homePageNotSet(BuildContext context) {

  return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 45),
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
              margin: EdgeInsets.only(top: 60),
              child: garageStatus(3),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children:[
        //         Container(
        //           width: 20,
        //           height: 20,
        //           margin: EdgeInsets.all(10.0),
        //           decoration: BoxDecoration(
        //             color: Colors.orange,
        //             shape: BoxShape.circle
        //   ),
        // ),
        //           Text("Current Status: Unknown", style: currentStatusStyle),
                // ],
                // ),
               
            ), 
                
           
          
            Container(
                height: 300,
                width: 400,
                margin: EdgeInsets.only(top: 30, left: 15, right: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(children: [
                  Text('Other Garages', style: addButton),
                ])
                ),
            Container(
              margin: EdgeInsets.only(top:50),
              width: 100,
              height:60,
              child: RaisedButton(
                child: Text('Setup'),
                shape: StadiumBorder(),
                onPressed: (){
                  setup();
                },

              
                  ),
                    
              ), 
            
              
            
          ],
        ),
      ));
}
