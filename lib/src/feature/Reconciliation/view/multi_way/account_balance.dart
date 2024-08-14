import 'package:firestore/src/res/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountBalance extends StatefulWidget {
  const AccountBalance({super.key});

  @override
  State<AccountBalance> createState() => _AccountBalanceState();
}

class _AccountBalanceState extends State<AccountBalance> {
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
                            InkWell(
                              onTap: () {
                                context.pop();
                              },
                              child: const Icon(
                                CupertinoIcons.left_chevron,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: width * .03, height: 0.0),
                            Text(
                              'Reconciliation',
                              style: texttheme.titleMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Multi-way Reconciliation',
                  style: texttheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Multi-way Reconciliation',
                  style: texttheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}