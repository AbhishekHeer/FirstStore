import 'package:firststore/src/utils/button.dart';
import 'package:firststore/src/utils/snackbar_service.dart';
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
              TextFeild.textfield(
                  width, height, "First Name", first_name, false), //Last name
              TextFeild.textfield(width, height, "Last Name", last_name, false),
              //Email
              TextFeild.textfield(width, height, "Email", email, false),

              //Contact Number
              TextFeild.textfield(
                  width, height, "Contact Number", contact_number, false),
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
