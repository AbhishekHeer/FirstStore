import 'package:firststore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatchAddTransaction extends StatefulWidget {
  const BatchAddTransaction({super.key});

  @override
  State<BatchAddTransaction> createState() => _BatchAddTransactionState();
}

class _BatchAddTransactionState extends State<BatchAddTransaction> {
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
                context, "Reconciliation", height, width, texttheme),
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
            SizedBox(width: 0.0, height: height * .03),
            SizedBox(
                height: height * .3,
                width: width * .8,
                child: Center(
                  child: Text(
                    "Do you wish to add new transaction?",
                    style: texttheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                )),

            // button
            SizedBox(width: 0.0, height: height * .08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Add New", () {}, height, width * .8),
                Button.button("Exit", () {}, height, width * .8),
              ],
            )
          ],
        ),
      )),
    );
  }
}
