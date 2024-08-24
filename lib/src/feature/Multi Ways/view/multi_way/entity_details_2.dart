import 'package:firststore/src/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EntityDetails2 extends StatefulWidget {
  const EntityDetails2({super.key});

  @override
  State<EntityDetails2> createState() => _EntityDetails2State();
}

TextEditingController name = TextEditingController();
TextEditingController registration_id = TextEditingController();
TextEditingController contact_number = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController gst_Registration_number = TextEditingController();

class _EntityDetails2State extends State<EntityDetails2> {
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
                  'Multi-way Reconciliation: Business',
                  style: texttheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //step
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
            // Registration ID*
            TextFeild.textfield(context, width, height, "Registration ID",
                registration_id, false),
            // Name
            TextFeild.textfield(context, width, height, "Name", name, false),
            //Contact Number*
            TextFeild.textfield(context, width, height, "Contact Number",
                contact_number, false),
            // Email
            TextFeild.textfield(context, width, height, "Email", email, false),
            //GST Registration Number*
            TextFeild.textfield(context, width, height,
                "GST Registration Number", gst_Registration_number, false),

            //two button
            SizedBox(width: 0.0, height: height * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed('/invoice_details');
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
