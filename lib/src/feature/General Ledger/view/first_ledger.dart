import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/button.dart';

class FirstLedger extends StatefulWidget {
  const FirstLedger({super.key});

  @override
  State<FirstLedger> createState() => _FirstLedgerState();
}

SingleValueDropDownController ledgerTypeController =
    SingleValueDropDownController();

class _FirstLedgerState extends State<FirstLedger> {
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
            Appbarhead.apphead(context, "Ledger", height, width, texttheme),
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Create your First Ledger',
                  style: texttheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(height: height * .03),
            TextFeild.dropdowntextfield(
                width, height, "Select Ledger Type", ledgerTypeController, [
              const DropDownValueModel(name: "General", value: "General"),
              const DropDownValueModel(name: "Subsidiary", value: "Subsidiary"),
              const DropDownValueModel(name: "Cash", value: "Cash"),
              const DropDownValueModel(name: "Sales", value: "Sales"),
              const DropDownValueModel(name: "Purchase", value: "Purchase"),
            ]),
            SizedBox(height: height * .1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button.button("Next", () {
                  if (ledgerTypeController.dropDownValue != null) {
                    context.pushNamed("/basic_info_ledger");
                  } else {
                    return;
                  }
                }, height, width)
              ],
            )
          ],
        ),
      )),
    );
  }
}
