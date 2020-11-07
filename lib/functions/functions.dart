import 'package:flutter/material.dart';
import 'package:smartgarage/main.dart';

buttonStatus() {
  // ! dynamic button
  return "open";
}

Future navigateToSharePage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SharePage()));
}
