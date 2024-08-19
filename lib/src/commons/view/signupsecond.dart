import 'package:firststore/src/feature/login/view/loginpage.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:firststore/src/utils/snackbar_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Signupsecond extends StatefulWidget {
  const Signupsecond({super.key});

  @override
  State<Signupsecond> createState() => _SignupsecondState();
}

TextEditingController user_name = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController comfirm_password = TextEditingController();

class _SignupsecondState extends State<Signupsecond> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(width: 0.0, height: height * .1),
            Center(
              child: Text(
                "Sign Up",
                style: texttheme.headlineLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 0.0, height: height * .03),
            //username
            TextFeild.textfield(width, height, "User Name", user_name, false),
            //password
            TextFeild.textfield(width, height, "Password", password, false),
            //comfirm password
            TextFeild.textfield(
                width, height, "Comfirm Password", comfirm_password, false),

            Padding(
              padding: EdgeInsets.only(top: height * .24, bottom: height * .03),
              child: Center(
                child: Button.button("Sign Up", () {
                  if (user_name.text.isEmpty) {
                    SnackbarService.showSnackbar(
                        context, "Please Enter User Name", Colors.red);
                  } else if (password.text != comfirm_password.text ||
                      password.text.isEmpty ||
                      comfirm_password.text.isEmpty) {
                    SnackbarService.showSnackbar(
                        context, "Password Not Matched !!", Colors.red);
                  } else {
                    context.pushNamed('/app');
                  }
                }, height, width),
              ),
            )
          ],
        ),
      ),
    );
  }
}
