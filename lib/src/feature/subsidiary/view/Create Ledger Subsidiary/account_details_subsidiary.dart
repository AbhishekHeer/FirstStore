import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    final taxIdentificationNumber = TextEditingController();
    final accountNumber = TextEditingController();
    final accountHolderName = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: 0.0, height: height * .01),
            Appbarhead.apphead(
                context, "Subsidiary Ledgers", height, width, texttheme),
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
                  'Step 3: Account Details',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            // Tax Identification Number*
            TextFeild.textfield(context, width, height,
                "Tax Identification Number", taxIdentificationNumber, false),
            // Account number
            TextFeild.textfield(
                context, width, height, "Account Number", accountNumber, false),
            // Account Holder Name
            TextFeild.textfield(context, width, height, "Account Number",
                accountHolderName, false),
            //two button
            SizedBox(width: 0.0, height: height * .06),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed("/sales_info_subsidiary");
                }, height, width * .8),
                Button.button("Add Another", () {}, height, width * .8),
                SizedBox(
                  height: height * .03,
                ),
              ],
            ),
            SizedBox(
              height: height * .03,
            ),
          ],
        ),
      )),
    );
  }
}
