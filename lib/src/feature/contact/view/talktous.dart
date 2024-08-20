import 'package:firststore/src/res/assets.dart';
import 'package:firststore/src/utils/button.dart';
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
            Appbarhead.apphead(context, "Talk to Us", height, width, texttheme),
            SizedBox(width: 0, height: height * .06),
            Container(
              height: height * .47,
              width: width * .9,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(talk_to_us),
                      filterQuality: FilterQuality.high),
                  color: Colors.white),
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
