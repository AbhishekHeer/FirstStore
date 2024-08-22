import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    final supplierID = TextEditingController();
    final name = TextEditingController();
    final contactNumber = TextEditingController();
    final email = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: 0.0, height: height * .01),
            Appbarhead.apphead(context, "Ledgers", height, width, texttheme),
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
                  'Step 2: Supplier Information',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            // Supplier ID
            TextFeild.textfield(
                width, height, "Supplier ID", supplierID, false),
            // Name
            TextFeild.textfield(width, height, "Name", name, false),
            // contact number
            TextFeild.textfield(
                width, height, "Contact Number", contactNumber, false),
            // email
            TextFeild.textfield(width, height, "Email", email, false),
            SizedBox(
              height: height * .06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button.button("Save", () {}, height, width),
                SizedBox(height: height * .03),
              ],
            )
          ],
        ),
      )),
    );
  }
}
