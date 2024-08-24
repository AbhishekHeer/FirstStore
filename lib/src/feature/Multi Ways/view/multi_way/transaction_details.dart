import 'package:firststore/src/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({super.key});

  @override
  State<TransactionDetails> createState() => _MultiWayReconciliationState();
}

TextEditingController date = TextEditingController();
TextEditingController transactionid = TextEditingController();
TextEditingController transactiontype = TextEditingController();
TextEditingController amount = TextEditingController();

class _MultiWayReconciliationState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(width: 0.0, height: height * .01),
            Appbarhead.apphead(
                context, "Reconciliation", height, width, texttheme),
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Multi-way Reconciliation',
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
                  'Step 1: Enter Transaction Details',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            // Transaction ID*
            TextFeild.textfield(
                context, width, height, "Transaction ID", transactionid, false),
            //Transaction Name
            TextFeild.textfield(context, width, height, "Transaction Name",
                transactiontype, false),
            //Transaction Type*
            TextFeild.textfield(context, width, height, "Transaction Name",
                transactiontype, false),

            // Date
            TextFeild.textfield(context, width, height, "Date", date, true),

            //Amount
            TextFeild.textfield(
                context, width, height, "Amountwh", amount, false),
            //two button
            SizedBox(width: 0.0, height: height * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed('/entity_type');
                }, height, width * .8),
                Button.button("Add Another", () {}, height, width * .8),
              ],
            )
          ],
        ),
      )),
    );
  }
}
