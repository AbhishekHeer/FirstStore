import 'package:firestore/src/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InvoiceDetails extends StatefulWidget {
  const InvoiceDetails({super.key});

  @override
  State<InvoiceDetails> createState() => _InvoiceDetailsState();
}

TextEditingController date = TextEditingController();
TextEditingController invoice_number = TextEditingController();
TextEditingController transaction_id = TextEditingController();
TextEditingController transaction_type = TextEditingController();
TextEditingController amount = TextEditingController();

class _InvoiceDetailsState extends State<InvoiceDetails> {
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
                    'Step 4: Enter Invoice Details',
                    style: texttheme.labelLarge
                        ?.copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              // TInvoice Number*
              TextFeild.textfield(
                  width, height, "Invoice Number", invoice_number, false),
              // Transaction ID*
              TextFeild.textfield(
                  width, height, "Transaction ID", transaction_id, false),
              //Transaction Type*
              TextFeild.textfield(
                  width, height, "Transaction Type", transaction_type, false),
              // Date*
              TextFeild.textfield(
                  width, height, "Transaction Type", transaction_type, true),
              //Amount
              TextFeild.textfield(width, height, "Amount", amount, true),
              //two button
              SizedBox(width: 0.0, height: height * .03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button.button("Save", () {
                    context.pushNamed('/account_balance');
                  }, height, width * .8),
                  Button.button("Add Another", () {}, height, width * .8),
                ],
              ),
              SizedBox(width: 0.0, height: height * .03),
            ],
          ),
        ),
      ),
    );
  }
}
