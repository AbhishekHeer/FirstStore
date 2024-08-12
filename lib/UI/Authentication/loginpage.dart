import 'package:firestore/materials/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(width: 0.0, height: height * .32),
            Padding(
              padding: EdgeInsets.only(bottom: height * .07),
              child: Center(
                  child: Text(
                'Login',
                style: texttheme.headlineSmall?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * .04, vertical: height * .02),
              child: const TextField(
                decoration: InputDecoration(
                    label: Text('Username'), border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * .04, vertical: height * .0),
              child: const TextField(
                decoration: InputDecoration(
                    label: Text('Password'), border: OutlineInputBorder()),
              ),
            ),
            SizedBox(width: 0.0, height: height * .05),
            Center(
              child: Button.button("Login", () {}, height, width),
            ),
            SizedBox(width: 0.0, height: height * .05),
            Center(
              child: Text(
                "Login Using :",
                style:
                    texttheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 0.0, height: height * .02),
            SizedBox(
              height: height * .05,
              width: width * .3,
              // decoration: const BoxDecoration(color: Colors.red),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * .05),
                    child: const Icon(FontAwesomeIcons.google),
                  ),
                  Container(
                    height: height * .07,
                    width: width * .007,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * .05),
                    child: const Icon(FontAwesomeIcons.facebookF),
                  ),
                ],
              ),
            ),
            SizedBox(width: 0.0, height: height * .02),
          ],
        ),
      ),
    );
  }
}
