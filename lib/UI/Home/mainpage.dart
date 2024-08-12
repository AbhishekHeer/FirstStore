import 'package:firestore/UI/Authentication/loginpage.dart';
import 'package:firestore/UI/Authentication/signuppage.dart';
import 'package:firestore/strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: greencolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 0.0, height: height * .3),
          const Icon(
            // ignore: deprecated_member_use
            FontAwesomeIcons.bank,
            color: textcolor,
          ),
          SizedBox(width: 0.0, height: height * .02),
          const Center(
            child: Text(
              "MODERN TREASURY",
              style: TextStyle(color: textcolor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * .3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Loginpage()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: textcolor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .02),
                  child: Container(
                    height: height * .02,
                    width: width * .003,
                    decoration: const BoxDecoration(color: textcolor),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupPage()),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: textcolor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
