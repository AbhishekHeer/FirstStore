import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/button.dart';

class SalesInfoSubsidiary extends StatefulWidget {
  const SalesInfoSubsidiary({super.key});

  @override
  State<SalesInfoSubsidiary> createState() => _SalesInfoSubsidiaryState();
}

class _SalesInfoSubsidiaryState extends State<SalesInfoSubsidiary> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    TextEditingController transactionid = TextEditingController();
    TextEditingController transactionname = TextEditingController();
    TextEditingController description = TextEditingController();
    TextEditingController date = TextEditingController();
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
                  'Step 4: Sale Information',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            // Transaction ID
            TextFeild.textfield(
                width, height, "Transaction ID", transactionid, false),
            //Transaction Name
            TextFeild.textfield(
                width, height, "Transaction Name", transactionname, false),
            // description
            TextFeild.textfield(
                width, height, "Description", description, false),
            //date
            TextFeild.textfield(width, height, "Date Of Inovice", date, true),
            //Amount
            TextFeild.textfield(width, height, "Amount", date, false),
            //two button
            SizedBox(width: 0.0, height: height * .06),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed("/account_balance_subsidiary");
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
