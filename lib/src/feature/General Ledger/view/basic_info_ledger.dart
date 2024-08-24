import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/button.dart';

class BasicInfoLedger extends StatefulWidget {
  const BasicInfoLedger({super.key});

  @override
  State<BasicInfoLedger> createState() => _BasicInfoLedgerState();
}

TextEditingController first_name = TextEditingController();
TextEditingController last_name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController contact_number = TextEditingController();
TextEditingController company_name = TextEditingController();

class _BasicInfoLedgerState extends State<BasicInfoLedger> {
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
                  'Step 1: Basic Information',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),

            //First Name
            TextFeild.textfield(
                context, width, height, "First Name", first_name, false),
            //Last Name
            TextFeild.textfield(
                context, width, height, "Last Name", last_name, false),
            //Contact Number
            TextFeild.textfield(context, width, height, "Contact Number",
                contact_number, false),

            // Email
            TextFeild.textfield(context, width, height, "Email", email, true),
            //Company Name
            TextFeild.textfield(
                context, width, height, "Company Name", company_name, false),

            //two button
            SizedBox(width: 0.0, height: height * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed('/account_details_ledger');
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
