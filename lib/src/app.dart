import 'package:firestore/src/commons/view/splashscreen.dart';
import 'package:flutter/cupertino.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Splashscreen();
  }
}
