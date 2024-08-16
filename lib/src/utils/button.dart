import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:firststore/src/res/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Button {
  static Widget button(
    String text,
    VoidCallback onPressed,
    double height,
    width,
  ) {
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

class TextFeild {
  static Widget textfield(width, height, String uppername,
      TextEditingController controller, bool readonly) {
    return Padding(
      padding: EdgeInsets.only(
          left: width * .06, right: width * .06, top: height * .02),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: width * .01),
              child: Row(
                children: [
                  Text(uppername),
                  const Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
          TextField(
            readOnly: readonly,
            controller: controller,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
        ],
      ),
    );
  }

  static Widget dropdowntextfield(
      width,
      height,
      String uppername,
      SingleValueDropDownController controller,
      List<DropDownValueModel> items) {
    return Padding(
      padding: EdgeInsets.only(
          left: width * .06, right: width * .06, top: height * .02),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: width * .01),
              child: Row(
                children: [
                  Text(uppername),
                  const Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
          DropDownTextField(
              textFieldDecoration:
                  const InputDecoration(border: OutlineInputBorder()),
              controller: controller,
              dropDownList: items)
        ],
      ),
    );
  }
}

class Appbarhead {
  static Widget apphead(BuildContext context, String text, double height,
      double width, texttheme) {
    return Center(
      child: Container(
          height: height * .07,
          width: width,
          margin: EdgeInsets.only(left: width * .05, right: width * .05),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height * .02),
              color: greencolor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * .04),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: const Icon(
                        CupertinoIcons.left_chevron,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: width * .03, height: 0.0),
                    Text(
                      text,
                      style:
                          texttheme.titleMedium?.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
