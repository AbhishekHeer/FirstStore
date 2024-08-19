import 'package:firststore/src/res/assets.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:firststore/src/utils/snackbar_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

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
            //username
            TextFeild.textfield(width, height, "User Name", username, false),
            //password
            TextFeild.textfield(width, height, "Password", password, false),

            SizedBox(width: 0.0, height: height * .05),
            Center(
              child: Button.button("Login", () {
                if (username.text.isEmpty || password.text.isEmpty) {
                  SnackbarService.showSnackbar(
                      context, "Oops !! Something is Misssing", Colors.red);
                } else {
                  context.goNamed('/app');
                }
              }, height, width),
            ),
            SizedBox(width: 0.0, height: height * .05),
            Center(
              child: Text(
                "Login Using :",
                style:
                    texttheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 0.0, height: height * .04),
            SizedBox(
              height: height * .06,
              width: width * .3,
              // decoration: const BoxDecoration(color: Colors.red),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * .05),
                    child: Image(image: AssetImage(google_image)),
                  ),
                  Container(
                    height: height * .07,
                    width: width * .007,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * .05),
                    child: Image(image: AssetImage(faceook_image)),
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
