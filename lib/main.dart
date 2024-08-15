import 'package:firestore/src/feature/Batch%20Payments/controller/controller.dart';
import 'package:firestore/src/feature/Reconciliation/controller/controller.dart';
import 'package:firestore/src/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DateProvider()),
        ChangeNotifierProvider(create: (_) => BatchDatapicker())
      ],
      child: MaterialApp.router(
        title: 'FirstStore',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: Gorouter.router,
      ),
    );
  }
}
