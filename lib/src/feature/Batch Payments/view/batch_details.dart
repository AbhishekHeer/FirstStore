import 'package:firestore/src/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BatchDetails extends StatefulWidget {
  const BatchDetails({super.key});

  @override
  State<BatchDetails> createState() => _BatchDetailsState();
}

TextEditingController date = TextEditingController();
TextEditingController batch_type = TextEditingController();
TextEditingController batch_id = TextEditingController();
TextEditingController amount = TextEditingController();
TextEditingController name = TextEditingController();

class _BatchDetailsState extends State<BatchDetails> {
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
                  'Batch Payments',
                  style: texttheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * .07, top: height * .03),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Step 1: Enter Batch Details',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            // batch ID*
            TextFeild.textfield(width, height, "Batch ID", batch_id, false),
            //Name
            TextFeild.textfield(width, height, "Name", name, false),
            //Batch Type*
            TextFeild.textfield(width, height, "Batch Type", batch_type, false),
            // Date
            TextFeild.textfield(width, height, "Date", amount, true),
            //Amount
            TextFeild.textfield(width, height, "Amount", amount, false),
            //two button
            SizedBox(width: 0.0, height: height * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed('/batch_transaction');
                }, height, width * .8),
                Button.button("Add Another", () {}, height, width * .8),
              ],
            ),

            SizedBox(width: 0.0, height: height * .03),
          ],
        ),
      )),
    );
  }
}
