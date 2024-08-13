import 'package:firestore/src/res/strings.dart';
import 'package:flutter/material.dart';

class Button {
  static Widget button(
      String text, VoidCallback onPressed, double height, width) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: btncolor, borderRadius: BorderRadius.circular(height * .01)),
        width: width * .455,
        height: height * .06,
        child: Center(
          child: Text(
            text,
            style:
                const TextStyle(color: textcolor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  static Widget meetingbtn(
      String text, VoidCallback onPressed, double height, width) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .06),
        child: Container(
          decoration: BoxDecoration(
              color: btncolor,
              borderRadius: BorderRadius.circular(height * .01)),
          width: double.infinity,
          height: height * .06,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  color: textcolor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
