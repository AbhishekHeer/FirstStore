import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/button.dart';

class AccountDetailLedger extends StatefulWidget {
  const AccountDetailLedger({super.key});

  @override
  State<AccountDetailLedger> createState() => _AccountDetailLedgerState();
}

TextEditingController tax_identification_number = TextEditingController();
TextEditingController account_number = TextEditingController();
TextEditingController account_holder_name = TextEditingController();

class _AccountDetailLedgerState extends State<AccountDetailLedger> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
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
                  'General Ledger',
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
                  'Step 2: Account Details',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //Tax Identification Number
            TextFeild.textfield(context, width, height,
                "Tax Identification Number", tax_identification_number, false),
            //Account Number
            TextFeild.textfield(context, width, height, "Account Number",
                account_number, false),
            //Account Holder Name
            TextFeild.textfield(context, width, height, "Account Holder Name",
                account_holder_name, false),
            //two button
            SizedBox(width: 0.0, height: height * .05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed('/transaction_ledger');
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
