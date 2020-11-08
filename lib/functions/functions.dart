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

addEmail() {
  //! for add button
  print("added");
}

editEmails() {
  // ! to edit the email list
  print('edited');
}

setup() {
  // ! for users with no garage setup button
  print('setup');
}
