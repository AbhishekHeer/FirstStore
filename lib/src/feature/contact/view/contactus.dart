import 'package:firststore/src/res/strings.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

TextEditingController first_name = TextEditingController();
TextEditingController last_name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController compony_name = TextEditingController();
TextEditingController no_of_employee = TextEditingController();

class _ContactusState extends State<Contactus> {
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
              Appbarhead.apphead(
                  context, "Contact Us", height, width, texttheme),
              SizedBox(width: 0.0, height: height * .04),
              Padding(
                padding: EdgeInsets.only(left: width * .04),
                child: SizedBox(
                    height: height * .07,
                    width: width * .88,
                    child: Text(
                      'Please enter your details below, and our team will get back to you shortly.',
                      style: texttheme.bodyMedium?.copyWith(),
                    )),
              ),
              //First name
              TextFeild.textfield(
                  width, height, "First Name", first_name, false),
              //Last name
              TextFeild.textfield(
                  width, height, "First Name", last_name, false),
              //Email
              TextFeild.textfield(width, height, "First Name", email, false),
              //Company Name
              TextFeild.textfield(
                  width, height, "First Name", compony_name, false),

              //No. of Employees
              TextFeild.textfield(
                  width, height, "First Name", no_of_employee, false),
              SizedBox(width: 0.0, height: height * .04),
              Center(
                child: Button.meetingbtn("Talk to Us", () {
                  //talk to us function
                  context.goNamed('/talktous');
                }, height, width),
              )
            ],
          ),
        ),
      ),
    );
  }
}
