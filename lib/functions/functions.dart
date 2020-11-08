import 'package:flutter/material.dart';
import 'package:smart_garage/main.dart';

Future navigateToSharePage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SharePage()));
}

buttonStatus() {
  // ! dynamic button
  return "open";
}

changeGarageStatus() async {
  print('changing status');
}
