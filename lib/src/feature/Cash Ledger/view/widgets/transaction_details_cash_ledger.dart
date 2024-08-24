import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/button.dart';

class TransactionDetailsCashLedger extends StatefulWidget {
  const TransactionDetailsCashLedger({super.key});

  @override
  State<TransactionDetailsCashLedger> createState() =>
      _TransactionDetailsCashLedgerState();
}

TextEditingController transaction_id = TextEditingController();
TextEditingController name = TextEditingController();
TextEditingController amount = TextEditingController();
SingleValueDropDownController payment_type = SingleValueDropDownController();
TextEditingController date = TextEditingController();

class _TransactionDetailsCashLedgerState
    extends State<TransactionDetailsCashLedger> {
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
                  'Cash Ledger',
                  style: texttheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w400, fontSize: height * .023),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * .07, top: height * .03),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Step 1: Transaction Details',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //Transaction ID*
            TextFeild.textfield(context, width, height, "Transaction ID",
                transaction_id, false),
            //  Name*
            TextFeild.textfield(context, width, height, "Name", name, false),
            // Payment Type
            TextFeild.dropdowntextfield(
                width, height, "Payment Type", payment_type, [], true),
            //Date*
            TextFeild.textfield(context, width, height, "Date", date, true),
            //Amount*
            TextFeild.textfield(
                context, width, height, "Amount", amount, false),
            SizedBox(width: 0.0, height: height * .03),
            //two button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed("/customer_details_cash_ledger");
                }, height, width * .8),
                Button.button("Add Another", () {}, height, width * .8),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
