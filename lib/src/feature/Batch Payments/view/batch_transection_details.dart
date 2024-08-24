import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BatchTransectionDetails extends StatefulWidget {
  const BatchTransectionDetails({super.key});

  @override
  State<BatchTransectionDetails> createState() =>
      _BatchTransectionDetailsState();
}

TextEditingController paymentdate = TextEditingController();
TextEditingController transaction_id = TextEditingController();
TextEditingController name = TextEditingController();
SingleValueDropDownController payment_type = SingleValueDropDownController();
TextEditingController amount = TextEditingController();

class _BatchTransectionDetailsState extends State<BatchTransectionDetails> {
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
                  'Batch Payments',
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
                  'Step 2: Enter Transaction Details',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            // Transaction ID*
            TextFeild.textfield(context, width, height, "Transaction ID",
                transaction_id, false),
            //Name
            TextFeild.textfield(context, width, height, "Name", name, false),
            //Payment Type*
            TextFeild.dropdowntextfield(
                width,
                height,
                "Payment Type",
                payment_type,
                [
                  const DropDownValueModel(
                      name: "Individual", value: "Individual"),
                  const DropDownValueModel(name: "business", value: "business"),
                ],
                true),
            // Date
            TextFeild.textfield(
                context, width, height, "Date", paymentdate, true),
            //Amount
            TextFeild.textfield(
                context, width, height, "Amount", amount, false),

            //two button
            SizedBox(width: 0.0, height: height * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  if (payment_type.dropDownValue?.name == "Individual") {
                    context.pushNamed('/indivitual_entity_details');
                  }
                  if (payment_type.dropDownValue?.name == "business") {
                    context.pushNamed("/business_entity_details");
                  }
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
