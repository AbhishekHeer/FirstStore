import 'package:flutter/material.dart';

import '../../../utils/button.dart';

class TransactionDetailsLedger extends StatefulWidget {
  const TransactionDetailsLedger({super.key});

  @override
  State<TransactionDetailsLedger> createState() =>
      _TransactionDetailsLedgerState();
}

class _TransactionDetailsLedgerState extends State<TransactionDetailsLedger> {
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
                context, "Reconciliation", height, width, texttheme),
            SizedBox(width: 0.0, height: height * .04),
          ],
        ),
      )),
    );
  }
}
