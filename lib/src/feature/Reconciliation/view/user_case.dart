import 'package:firststore/src/res/assets.dart';
import 'package:firststore/src/res/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserCase extends StatefulWidget {
  const UserCase({super.key});

  @override
  State<UserCase> createState() => _UserCaseState();
}

class _UserCaseState extends State<UserCase> {
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
            SizedBox(width: 0.0, height: height * .06),
            Padding(
              padding: EdgeInsets.only(left: width * .05),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select Use Case',
                  style: texttheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(width: 0.0, height: height * .1),
            //four user case
            Container(
                decoration: const BoxDecoration(),
                height: height * .38,
                width: width * .95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () =>
                              context.pushNamed('/transaction_details'),
                          child: Column(
                            children: [
                              Image(image: AssetImage(user_case1)),
                              SizedBox(width: 0.0, height: height * .01),
                              const Text('Multi-way')
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Image(image: AssetImage(user_case2)),
                            SizedBox(width: 0.0, height: height * .01),
                            const Text('Three-way ')
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            context
                                .pushNamed('/intercompany_transaction_details');
                          },
                          child: Column(
                            children: [
                              Image(image: AssetImage(user_case4)),
                              SizedBox(width: 0.0, height: height * .01),
                              const Text('Intercompany')
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  context.pushNamed('/batch_details');
                                },
                                child: Image(image: AssetImage(user_case3))),
                            SizedBox(width: 0.0, height: height * .01),
                            const Text('Batch Payments')
                          ],
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
