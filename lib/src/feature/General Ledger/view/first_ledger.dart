import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:firststore/src/utils/snackbar_service.dart';
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
            Appbarhead.apphead(context, "Ledgers", height, width, texttheme),
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
                width,
                height,
                "Select Ledger Type",
                ledgerTypeController,
                [
                  const DropDownValueModel(name: "General", value: "General"),
                  const DropDownValueModel(
                      name: "Subsidiary", value: "Subsidiary"),
                  const DropDownValueModel(name: "Cash", value: "Cash"),
                  const DropDownValueModel(name: "Sales", value: "Sales"),
                  const DropDownValueModel(name: "Purchase", value: "Purchase"),
                ],
                true),
            SizedBox(height: height * .1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button.button("Next", () {
                  if (ledgerTypeController.dropDownValue?.value == "General") {
                    context.pushNamed("/basic_info_ledger");
                  } else if (ledgerTypeController.dropDownValue?.value ==
                      "Sales") {
                    context.pushNamed('/customer_info_sales');
                  } else if (ledgerTypeController.dropDownValue?.value ==
                      "Cash") {
                    context.pushNamed("/transaction_cash_ledger");
                  } else if (ledgerTypeController.dropDownValue?.value ==
                      "Purchase") {
                    context.pushNamed('/purchase_info');
                  } else if (ledgerTypeController.dropDownValue?.value ==
                      "Subsidiary") {
                    context.pushNamed('/subsidiary_home');
                  } else {
                    SnackbarService.showSnackbar(
                        context, "Please Select Ledger Type", Colors.red);
                  }
                }, height, width),
                SizedBox(height: height * .03),
              ],
            )
          ],
        ),
      )),
    );
  }
}
