import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/button.dart';

class TransactionDetailsLedger extends StatefulWidget {
  const TransactionDetailsLedger({super.key});

  @override
  State<TransactionDetailsLedger> createState() =>
      _TransactionDetailsLedgerState();
}

TextEditingController date = TextEditingController();
TextEditingController name = TextEditingController();
SingleValueDropDownController payment_type = SingleValueDropDownController();
TextEditingController transaction_id = TextEditingController();
TextEditingController amount = TextEditingController();

class _TransactionDetailsLedgerState extends State<TransactionDetailsLedger> {
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
                'Step 3: Transaction Details',
                style:
                    texttheme.labelLarge?.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          ),
          // Transaction ID*
          TextFeild.textfield(
              width, height, "Transaction ID", transaction_id, false),
          //Name
          TextFeild.textfield(width, height, "Name", name, false),
          //Payment Type*
          TextFeild.dropdowntextfield(
              width, height, "Payment Type", payment_type, [], true),

          // Date
          TextFeild.textfield(width, height, "Date", date, true),
          //Amount
          TextFeild.textfield(width, height, "Amount", amount, false),

          //two button
          SizedBox(width: 0.0, height: height * .03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button.button("Save", () {
                context.pushNamed('/');
              }, height, width * .8),
              Button.button("Add Another", () {}, height, width * .8),
            ],
          ),
        ],
      ),
    )));
  }
}
