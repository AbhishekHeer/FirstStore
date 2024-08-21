import 'package:flutter/material.dart';

import '../../../utils/button.dart';

class SupplierInfo extends StatefulWidget {
  const SupplierInfo({super.key});

  @override
  State<SupplierInfo> createState() => _SupplierInfoState();
}

class _SupplierInfoState extends State<SupplierInfo> {
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
          ],
        ),
      )),
    );
  }
}
