import 'package:flutter/material.dart';
import 'package:smart_garage/style/global.dart';
import 'package:smart_garage/functions/functions.dart';

openButton(int buttonStatus){
  if (buttonStatus == 1){
    return MaterialButton(
      height: 300,
      color: Colors.white12,
      minWidth: 300,
      shape: StadiumBorder(),
      child: Text("OPEN", style: garageButton),
      splashColor: Colors.grey,
      onPressed: () {
        changeGarageStatus();
    });
  }


  else if (buttonStatus == 2){
    return MaterialButton(
      height: 300,
      color: Colors.white12,
      minWidth: 300,
      shape: StadiumBorder(),
      child: Text("CLOSE", style: garageButton),
      splashColor: Colors.grey,
      onPressed: () {
        changeGarageStatus();
    });
  }


  else{
    return MaterialButton(
      height: 300,
      color: Colors.white12,
      minWidth: 300,
      shape: StadiumBorder(),
      child: Text("ERROR", style: garageButton),
      splashColor: Colors.grey,
    );
  }
  


}






garageStatus(int garageStatus){
  if(garageStatus == 1){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          width: 20,
          height: 20,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle
          ),
        ),
        Text("Current Status: Closed", style: currentStatusStyle),
      ]
    );
  }
  else if(garageStatus == 2){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          width: 20,
          height: 20,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle
          ),
        ),
        Text("Current Status: Open", style: currentStatusStyle),
      ]
    );  }
  else{
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          width: 20,
          height: 20,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle
          ),
        ),
        Text("Current Status: Unknown", style: currentStatusStyle),
      ]
    );  }
}