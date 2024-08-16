import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntercompanyIndividual extends StatefulWidget {
  const IntercompanyIndividual({super.key});

  @override
  State<IntercompanyIndividual> createState() => _IntercompanyIndividualState();
}

class _IntercompanyIndividualState extends State<IntercompanyIndividual> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[],
        ),
      )),
    );
  }
}
