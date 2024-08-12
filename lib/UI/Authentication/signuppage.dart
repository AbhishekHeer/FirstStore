import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

final _formKey = GlobalKey<FormState>();

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(width: 0.0, height: height * .24),
        Text(
          'Sign Up',
          style: texttheme.headlineMedium?.copyWith(color: Colors.black),
        ),
        SizedBox(width: 0.0, height: height * .07),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: width * .03, right: width * .03, top: height * .01),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .01),
                      child: const Text('First Name'),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * .03, right: width * .03, top: height * .01),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .01),
                      child: const Text('First Name'),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * .03, right: width * .03, top: height * .01),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .01),
                      child: const Text('First Name'),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * .03, right: width * .03, top: height * .01),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * .01),
                      child: const Text('First Name'),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
