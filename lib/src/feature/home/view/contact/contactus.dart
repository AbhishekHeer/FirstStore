import 'package:firestore/src/res/strings.dart';
import 'package:firestore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

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
                                'Contact Us',
                                style: texttheme.titleMedium
                                    ?.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
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
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(height * .01),
                      )),
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
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(height * .01),
                      )),
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
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(height * .01),
                      )),
                    ),
                  ],
                ),
              ),
              //Company Name
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
                            Text('Company Name'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(height * .01),
                      )),
                    ),
                  ],
                ),
              ),

              //No. of Employees
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
                            Text('No. of Employees'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(height * .01),
                      )),
                    ),
                  ],
                ),
              ),

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
