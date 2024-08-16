import 'package:firststore/src/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EntityDetails extends StatefulWidget {
  const EntityDetails({super.key});

  @override
  State<EntityDetails> createState() => _EntityDetailsState();
}

TextEditingController amount = TextEditingController();
TextEditingController transaction_type = TextEditingController();
TextEditingController transaction_name = TextEditingController();
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
                  'Multi-way Reconciliation',
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
            // Transaction ID*
            TextFeild.textfield(width, height, "Amount", transaction_id, false),
            //Transaction Name
            TextFeild.textfield(
                width, height, "Amount", transaction_name, false),
            //Transaction Type*
            TextFeild.textfield(
                width, height, "Amount", transaction_type, false),
            //Amount
            TextFeild.textfield(width, height, "Amount", amount, false),
            //two button
            SizedBox(width: 0.0, height: height * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed('/entity_details2');
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
