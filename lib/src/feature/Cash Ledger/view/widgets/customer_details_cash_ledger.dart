import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/button.dart';

class CustomerDetailsCashLedger extends StatefulWidget {
  const CustomerDetailsCashLedger({super.key});

  @override
  State<CustomerDetailsCashLedger> createState() =>
      _CustomerDetailsCashLedgerState();
}

TextEditingController customer_id = TextEditingController();
TextEditingController customer_name = TextEditingController();
TextEditingController contact_number = TextEditingController();
TextEditingController email = TextEditingController();

class _CustomerDetailsCashLedgerState extends State<CustomerDetailsCashLedger> {
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
                  "Step 2: Customer Details",
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //Customer ID*
            TextFeild.textfield(
                width, height, "Customer ID", customer_id, false),
            //  Customer Name*
            TextFeild.textfield(
                width, height, "Customer Name", customer_name, false),
            // Contact Number
            TextFeild.textfield(
                width, height, "Contact Number", contact_number, false),
            //Email*
            TextFeild.textfield(width, height, "Email", email, false),
            SizedBox(width: 0.0, height: height * .06),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed("/first_ledger");
                }, height, width * .8),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
