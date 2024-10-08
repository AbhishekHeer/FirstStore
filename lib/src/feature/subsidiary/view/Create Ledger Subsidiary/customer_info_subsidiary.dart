import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../utils/button.dart';

class CustomerInfoSubsidiary extends StatefulWidget {
  const CustomerInfoSubsidiary({super.key});

  @override
  State<CustomerInfoSubsidiary> createState() => _CustomerInfoSubsidiaryState();
}

TextEditingController customer_id = TextEditingController();
TextEditingController customer_name = TextEditingController();
TextEditingController contact_number = TextEditingController();
TextEditingController email = TextEditingController();

class _CustomerInfoSubsidiaryState extends State<CustomerInfoSubsidiary> {
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
      Appbarhead.apphead(
          context, "Subsidiary Ledgers", height, width, texttheme),
      SizedBox(width: 0.0, height: height * .04),
      Padding(
        padding: EdgeInsets.only(left: width * .07),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Create Ledger',
            style: texttheme.titleLarge?.copyWith(fontWeight: FontWeight.w400),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: width * .07, top: height * .03),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Step 1: Customer Information',
            style: texttheme.labelLarge?.copyWith(fontWeight: FontWeight.w400),
          ),
        ),
      ),
      // Customer ID*
      TextFeild.textfield(
          context, width, height, "Customer ID", customer_id, false),
      // Customer Name*
      TextFeild.textfield(
          context, width, height, "Customer Name", customer_name, false),
      // Contact Number ID*
      TextFeild.textfield(
          context, width, height, "Contact Number", customer_name, false),
      //Email*
      TextFeild.textfield(context, width, height, "Email", email, false),
      //two button
      SizedBox(width: 0.0, height: height * .03),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Button.button("Save", () {
            context.pushNamed('/vendor_info_subsidiary');
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
    ]))));
  }
}
