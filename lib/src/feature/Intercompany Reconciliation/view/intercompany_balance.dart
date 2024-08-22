import 'package:flutter/material.dart';

import '../../../utils/button.dart';
import '../../../utils/card.dart';

class IntercompanyBalance extends StatefulWidget {
  const IntercompanyBalance({super.key});

  @override
  State<IntercompanyBalance> createState() => _IntercompanyBalanceState();
}

class _IntercompanyBalanceState extends State<IntercompanyBalance> {
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
                  'Intercompany Reconciliation',
                  style: texttheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * .04, vertical: height * .01),
                    child: AccountCard.card(height, width, texttheme, "1323.45",
                        "Ashish", "XXX120", "XXXX9560"),
                  );
                }),
          ],
        ),
      )),
    );
  }
}
