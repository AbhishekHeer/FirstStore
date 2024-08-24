import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntercompanyTransactionDetails extends StatefulWidget {
  const IntercompanyTransactionDetails({super.key});

  @override
  State<IntercompanyTransactionDetails> createState() =>
      _InternationalTransactionDetailsState();
}

TextEditingController batch_id = TextEditingController();
SingleValueDropDownController batch_type = SingleValueDropDownController();
TextEditingController name = TextEditingController();
TextEditingController date = TextEditingController();
TextEditingController amount = TextEditingController();

class _InternationalTransactionDetailsState
    extends State<IntercompanyTransactionDetails> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(children: <Widget>[
        SizedBox(width: 0.0, height: height * .01),
        Appbarhead.apphead(context, "Reconciliation", height, width, texttheme),
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
              'Step 1: Enter Transaction Details',
              style:
                  texttheme.labelLarge?.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
        ),
        // Transaction ID*
        TextFeild.textfield(
            context, width, height, "Transaction ID", batch_id, false),
        //Name
        TextFeild.textfield(context, width, height, "Name", name, false),
        //Payment Type*
        TextFeild.dropdowntextfield(
            width, height, "Payment Type", batch_type, [], true),

        // Date
        TextFeild.textfield(context, width, height, "Date", date, true),
        //Amount
        TextFeild.textfield(context, width, height, "Amount", amount, false),

        //two button
        SizedBox(width: 0.0, height: height * .03),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Button.button("Save", () {
              context.pushNamed('/intercompany_entity_details');
            }, height, width * .8),
            Button.button("Add Another", () {}, height, width * .8),
          ],
        ),
      ])),
    ));
  }
}
