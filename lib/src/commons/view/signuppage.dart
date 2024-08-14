import 'package:firestore/src/utils/button.dart';
import 'package:firestore/src/utils/snackbar_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

TextEditingController first_name = TextEditingController();
TextEditingController last_name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController contact_number = TextEditingController();

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(width: 0.0, height: height * .2),
          Text(
            'Sign Up',
            style: texttheme.headlineMedium
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 0.0, height: height * .04),
          Column(
            children: <Widget>[
              //First name
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
                            Text('First Name'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextField(
                      controller: first_name,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ],
                ),
              ),
              //Last name
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
                            Text('Last Name'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextField(
                      controller: last_name,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ],
                ),
              ),
              //Email
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
                            Text('Email'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextField(
                      controller: email,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ],
                ),
              ),
              //Contact Number
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
                            Text('Contact Number'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextField(
                      controller: contact_number,
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 0.0, height: height * .04),
          Center(
            child: Button.button("Next", () {
              if (first_name.text.isEmpty) {
                SnackbarService.showSnackbar(
                    context, "First Name is Empty", Colors.red);
              } else if (last_name.text.isEmpty) {
                SnackbarService.showSnackbar(
                    context, "Last Name is Empty", Colors.red);
              } else if (email.text.isEmpty) {
                SnackbarService.showSnackbar(
                    context, "Email is Empty", Colors.red);
              } else if (contact_number.text.isEmpty) {
                SnackbarService.showSnackbar(
                    context, "Contact Number is Empty", Colors.red);
              } else {
                context.goNamed('/signupsecond');
              }
            }, height, width),
          ),
          SizedBox(width: 0.0, height: height * .02),
        ],
      ),
    ));
  }
}
