import 'package:firestore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatchPayment extends StatefulWidget {
  const BatchPayment({super.key});

  @override
  State<BatchPayment> createState() => _BatchPaymentState();
}

TextEditingController invoice_number = TextEditingController();
TextEditingController payment_type = TextEditingController();
TextEditingController date = TextEditingController();
TextEditingController amount = TextEditingController();

class _BatchPaymentState extends State<BatchPayment> {
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
                  'Step 4: Enter Invoice Details',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //Invoice Number*
            TextFeild.textfield(
                width, height, "Invoice Number", invoice_number, false),
            //Invoice Number*
            TextFeild.textfield(
                width, height, "Payment Type", payment_type, false),
            // date
            TextFeild.textfield(width, height, "Date", date, false),

            // amount
            TextFeild.textfield(width, height, "Amount", amount, false),
            SizedBox(width: 0.0, height: height * .03),
            //button
            Button.button("Submit", () {}, height, width),
            SizedBox(width: 0.0, height: height * .03),
          ],
        ),
      )),
    );
  }
}
