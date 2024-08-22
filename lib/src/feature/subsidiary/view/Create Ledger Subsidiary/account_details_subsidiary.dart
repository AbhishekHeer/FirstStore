import 'package:flutter/material.dart';

import '../../../../utils/button.dart';

class AccountDetailsSubsidiary extends StatefulWidget {
  const AccountDetailsSubsidiary({super.key});

  @override
  State<AccountDetailsSubsidiary> createState() =>
      _AccountDetailsSubsidiaryState();
}

class _AccountDetailsSubsidiaryState extends State<AccountDetailsSubsidiary> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    final vendorId = TextEditingController();
    final vendorName = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: 0.0, height: height * .01),
            Appbarhead.apphead(context, "Ledger", height, width, texttheme),
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Create Ledger',
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
                  'Step 2: Vendor Information',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            // Tax Identification Number*
            TextFeild.textfield(
                width, height, "Tax Identification Number", vendorId, false),
            // Account number
            TextFeild.textfield(
                width, height, "Account Number", vendorName, false),
          ],
        ),
      )),
    );
  }
}
