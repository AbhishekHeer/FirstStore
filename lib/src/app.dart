import 'package:firststore/src/feature/home/controller/navigate_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _MyAppState();
}

class _MyAppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Consumer<NavigateNotifier>(builder: (context, ref, child) {
        return ref.pages.elementAt(ref.index);
      }),
      bottomNavigationBar: SafeArea(
        child: Container(
            height: height * .06,
            width: width * .9,
            margin: EdgeInsets.only(
                bottom: height * .02, left: width * .05, right: width * .05),
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the bottom bar
              borderRadius: BorderRadius.circular(height * .01),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, -2), // Shadow position
                ),
              ],
            ),
            child: Consumer<NavigateNotifier>(builder: (context, ref, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      ref.changeindex(0);
                    },
                    child: Icon(
                      CupertinoIcons.home,
                      size: height * .025,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ref.changeindex(1);
                    },
                    child: Icon(
                      Icons.payment_outlined,
                      size: height * .025,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ref.changeindex(2);
                    },
                    child: Icon(
                      CupertinoIcons.bookmark,
                      size: height * .025,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ref.changeindex(3);
                    },
                    child: Icon(
                      FontAwesomeIcons.buildingColumns,
                      size: height * .025,
                    ),
                  ),
                ],
              );
            })),
      ),
    );
  }
}
