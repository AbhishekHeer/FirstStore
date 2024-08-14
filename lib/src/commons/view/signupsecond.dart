import 'package:firestore/src/commons/view/loginpage.dart';
import 'package:firestore/src/utils/button.dart';
import 'package:firestore/src/utils/snackbar_service.dart';
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
            ), //username
            SizedBox(width: 0.0, height: height * .03),
            Padding(
              padding: EdgeInsets.only(
                  left: width * .06, right: width * .06, top: height * .02),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .01),
                      child: const Row(
                        children: [
                          Text('User Name'),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextField(
                    controller: user_name,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            //password
            Padding(
              padding: EdgeInsets.only(
                  left: width * .06, right: width * .06, top: height * .02),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .01),
                      child: const Row(
                        children: [
                          Text('Password'),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextField(
                    controller: password,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            //comfirm password
            Padding(
              padding: EdgeInsets.only(
                  left: width * .06, right: width * .06, top: height * .02),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .01),
                      child: const Row(
                        children: [
                          Text('Comfirm Password'),
                          Text(
                            '*',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextField(
                    controller: comfirm_password,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),

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
                    context.pushNamed('/home');
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
