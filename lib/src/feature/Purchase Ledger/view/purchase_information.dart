import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/button.dart';

class PurchaseInformation extends StatefulWidget {
  const PurchaseInformation({super.key});

  @override
  State<PurchaseInformation> createState() => _PurchaseInformationState();
}

SingleValueDropDownController payment_type = SingleValueDropDownController();
TextEditingController date = TextEditingController();
TextEditingController amount = TextEditingController();

class _PurchaseInformationState extends State<PurchaseInformation> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    TextEditingController invoiceNumber = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: 0.0, height: height * .01),
            Appbarhead.apphead(
                context, "Reconciliation", height, width, texttheme),
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Purchase Ledger',
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
                  "Step 1: Purchase Information",
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //Invoice Number*
            TextFeild.textfield(
                width, height, "Invoice Number", invoiceNumber, false),
            //payment type
            TextFeild.dropdowntextfield(
                width,
                height,
                "Payment Type",
                payment_type,
                [const DropDownValueModel(name: "First", value: "value")]),
            //date
            TextFeild.textfield(width, height, "Date", date, true),
            //Amount
            TextFeild.textfield(width, height, "Amount", amount, false),
            SizedBox(height: height * .1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button.button("Save", () {
                  context.pushNamed('/supplier_info');
                }, height, width),
                SizedBox(height: height * .03),
              ],
            )
          ],
        ),
      )),
    );
  }
}
