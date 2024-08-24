import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/button.dart';

class VendorInfoSubsidiary extends StatefulWidget {
  const VendorInfoSubsidiary({super.key});

  @override
  State<VendorInfoSubsidiary> createState() => _VendorInfoSubsidiaryState();
}

final vendor_id = TextEditingController();
final vendor_name = TextEditingController();
final vendor_contact_number = TextEditingController();
final vendor_email = TextEditingController();
SingleValueDropDownController tax_info = SingleValueDropDownController();

class _VendorInfoSubsidiaryState extends State<VendorInfoSubsidiary> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
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
                  'Step 2: Vendor Information',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            // Vendor ID*
            TextFeild.textfield(
                context, width, height, "Vendor ID", vendor_id, false),
            // Vendor Name*
            TextFeild.textfield(
                context, width, height, "Vendor Name", vendor_name, false),
            //Vendor Contact Number*
            TextFeild.textfield(context, width, height, "Vendor Contact Number",
                vendor_contact_number, false),
            // Vendor Email*
            TextFeild.textfield(
                context, width, height, "Vendor Email", vendor_email, false),
            //Tax Information (if applicable)
            TextFeild.dropdowntextfield(width, height,
                "Tax Information (if applicable)", tax_info, [], false),
            //two button
            SizedBox(width: 0.0, height: height * .03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Save", () {
                  context.pushNamed("/account_details_subsidiary");
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
          ],
        ),
      )),
    );
  }
}
