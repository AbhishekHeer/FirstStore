import 'package:firestore/src/res/strings.dart';
import 'package:firestore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Talktous extends StatefulWidget {
  const Talktous({super.key});

  @override
  State<Talktous> createState() => _TalktousState();
}

class _TalktousState extends State<Talktous> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(width: 0.0, height: height * .01),
            Center(
              child: Container(
                  height: height * .07,
                  width: width,
                  margin:
                      EdgeInsets.only(left: width * .05, right: width * .05),
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
                            const Icon(
                              CupertinoIcons.left_chevron,
                              color: Colors.white,
                            ),
                            SizedBox(width: width * .03, height: 0.0),
                            Text(
                              'Talk to Us',
                              style: texttheme.titleMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(width: 0, height: height * .06),
            Container(
              height: height * .47,
              width: width * .9,
              decoration: const BoxDecoration(color: Colors.white),
            ),
            SizedBox(
              width: width * .6,
              height: height * .1,
              child: Center(
                child: Text(
                  "Talk to Us",
                  style: texttheme.titleLarge?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Button.meetingbtn("Schedule a Meet", () {
                //Schedule a Meet function
              }, height, width),
            ),
            SizedBox(width: 0.0, height: height * .04),
            Center(
              child: Button.meetingbtn("Contact Customer Care", () {
                //Contact Customer Care function
              }, height, width),
            ),
          ],
        ),
      ),
    ));
  }
}
