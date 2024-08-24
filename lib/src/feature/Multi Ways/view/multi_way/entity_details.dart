import 'package:firststore/src/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EntityDetails extends StatefulWidget {
  const EntityDetails({super.key});

  @override
  State<EntityDetails> createState() => _EntityDetailsState();
}

TextEditingController email = TextEditingController();
TextEditingController contact_number = TextEditingController();
TextEditingController name = TextEditingController();
TextEditingController transaction_id = TextEditingController();

class _EntityDetailsState extends State<EntityDetails> {
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
                  'Multi-way Reconciliation: Individual',
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
                  "Step 3: Enter Entity Details",
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            //Individual ID*
            TextFeild.textfield(
                context, width, height, "Individual ID", transaction_id, false),
            //Name
            TextFeild.textfield(context, width, height, "Name*", name, false),
            //Contact Number*
            TextFeild.textfield(context, width, height, "Contact Number",
                contact_number, false),
            //Email
            TextFeild.textfield(context, width, height, "Amount", email, false),
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
