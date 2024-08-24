import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/button.dart';

class IntercompanyInvoice extends StatefulWidget {
  const IntercompanyInvoice({super.key});

  @override
  State<IntercompanyInvoice> createState() => _IntercompanyInvoiceState();
}

TextEditingController invoice_number = TextEditingController();
SingleValueDropDownController payment_type = SingleValueDropDownController();
TextEditingController amount = TextEditingController();
TextEditingController date = TextEditingController();

class _IntercompanyInvoiceState extends State<IntercompanyInvoice> {
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
                  'Intercompany Reconciliation',
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
                  'Step 3: Enter Entity Details',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //Invoice Number*
            TextFeild.textfield(context, width, height, "Registration ID*",
                invoice_number, false),
            //Payment Type*
            TextFeild.dropdowntextfield(
                width,
                height,
                "Payment Type",
                payment_type,
                [
                  const DropDownValueModel(name: "cash", value: "1"),
                  const DropDownValueModel(name: "online", value: "2"),
                ],
                true),
            // Contact Number*
            TextFeild.textfield(context, width, height, "Date", date, true),
            //Amount*
            TextFeild.textfield(context, width, height, "Email", amount, false),

            SizedBox(width: 0.0, height: height * .05),
            Button.button("Next", () {
              context.pushNamed("/intercompany_balance");
            }, height, width * .8),
            SizedBox(width: 0.0, height: height * .05),
          ],
        ),
      )),
    );
  }
}
