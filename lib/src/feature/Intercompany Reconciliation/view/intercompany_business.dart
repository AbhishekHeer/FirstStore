import 'package:firststore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntercompanyBusiness extends StatefulWidget {
  const IntercompanyBusiness({super.key});

  @override
  State<IntercompanyBusiness> createState() => _IntercompanyBusinessState();
}

TextEditingController rigistration = TextEditingController();
TextEditingController company_name = TextEditingController();
TextEditingController contact_number = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController gst_number = TextEditingController();

class _IntercompanyBusinessState extends State<IntercompanyBusiness> {
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
                  'Intercompany Reconciliation: Business',
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
            //Registration ID*
            TextFeild.textfield(
                width, height, "Registration ID*", rigistration, false),
            //Compony Name
            TextFeild.textfield(
                width, height, "Compony Name", company_name, false),
            // Contact Number*
            TextFeild.textfield(
                width, height, "Contact Number", contact_number, false),
            //Email*
            TextFeild.textfield(width, height, "Email", email, false),
            //GST Registration No.*
            TextFeild.textfield(
                width, height, "GST Registration No.", gst_number, false),
            SizedBox(width: 0.0, height: height * .05),
            Button.button("Next", () {
              context.pushNamed("/intercompany_invoice");
            }, height, width * .8),
            SizedBox(width: 0.0, height: height * .05),
          ],
        ),
      )),
    );
  }
}
