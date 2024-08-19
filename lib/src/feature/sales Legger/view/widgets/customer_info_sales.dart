import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/button.dart';

class CustomerInfoSales extends StatefulWidget {
  const CustomerInfoSales({super.key});

  @override
  State<CustomerInfoSales> createState() => _CoutomerInfoSalesState();
}

TextEditingController customer_id = TextEditingController();
TextEditingController customer_name = TextEditingController();
TextEditingController customer_phone = TextEditingController();
TextEditingController customer_email = TextEditingController();

class _CoutomerInfoSalesState extends State<CustomerInfoSales> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(width: 0.0, height: height * .01),
          Appbarhead.apphead(context, "Ledgers", height, width, texttheme),
          SizedBox(width: 0.0, height: height * .04),
          Padding(
            padding: EdgeInsets.only(left: width * .07),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sales Ledger',
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
                'Step 1: Customer Information',
                style:
                    texttheme.labelLarge?.copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          ),
          // Customer ID*
          TextFeild.textfield(width, height, "Customer ID", customer_id, false),
          // Customer Name*
          TextFeild.textfield(
              width, height, "Customer Name", customer_name, false),
          // Contact Number ID*
          TextFeild.textfield(
              width, height, "Contact Number", customer_phone, false),
          //Email*
          TextFeild.textfield(
              width, height, "Customer ID", customer_email, false),
          //two button
          SizedBox(width: 0.0, height: height * .03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button.button("Save", () {
                context.pushNamed('/sales_info_ledger');
              }, height, width * .8),
              Button.button("Add Another", () {}, height, width * .8),
            ],
          ),
        ]),
      )),
    );
  }
}
