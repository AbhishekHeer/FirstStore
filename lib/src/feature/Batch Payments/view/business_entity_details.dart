import 'package:firststore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BusinessEntityDetails extends StatefulWidget {
  const BusinessEntityDetails({super.key});

  @override
  State<BusinessEntityDetails> createState() => _BusinessEntityDetailsState();
}

TextEditingController registration_id = TextEditingController();
TextEditingController contact_number = TextEditingController();
TextEditingController company_name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController gst_number = TextEditingController();

class _BusinessEntityDetailsState extends State<BusinessEntityDetails> {
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
                  'Batch Payments: Business',
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
                  'Step 3: Enter Entity Details',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //Registration ID**
            TextFeild.textfield(
                width, height, "Registration ID", registration_id, false),
            //Company Name*
            TextFeild.textfield(
                width, height, "Company Name", company_name, false),
            //Contact Number*
            TextFeild.textfield(width, height, "Contact Number", email, false),
            //Email
            TextFeild.textfield(width, height, "Email", email, false),
            //GST Registration No.
            TextFeild.textfield(
                width, height, "GST Registration No.", gst_number, false),
            //two button
            SizedBox(width: 0.0, height: height * .09),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed('/batch_invoice_details');
                }, height, width * .8),
                Button.button("Add Another", () {}, height, width * .8),
              ],
            ),
            SizedBox(width: 0.0, height: height * .09),
          ],
        ),
      )),
    );
  }
}
