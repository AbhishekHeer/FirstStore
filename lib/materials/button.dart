import 'package:firestore/strings.dart';
import 'package:flutter/material.dart';

class Button {
  static Widget button(
      String text, VoidCallback onPressed, double height, width) {
    return Container(
      decoration: BoxDecoration(
          color: btncolor, borderRadius: BorderRadius.circular(height * .01)),
      width: width * .455,
      height: height * .06,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(color: textcolor),
        ),
      ),
    );
  }
}
