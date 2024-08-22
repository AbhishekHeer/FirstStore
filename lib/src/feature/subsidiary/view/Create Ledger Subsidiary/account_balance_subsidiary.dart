import 'package:firststore/src/utils/card.dart';
import 'package:flutter/material.dart';

import '../../../../utils/button.dart';

class AccountBalanceSubsidiary extends StatefulWidget {
  const AccountBalanceSubsidiary({super.key});

  @override
  State<AccountBalanceSubsidiary> createState() =>
      _AccountBalanceSubsidiaryState();
}

class _AccountBalanceSubsidiaryState extends State<AccountBalanceSubsidiary> {
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
                  'Accounts',
                  style: texttheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(width: 0.0, height: height * .04),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * .04, vertical: height * .01),
                    child: AccountCard.card(height, width, texttheme, "1323.45",
                        "Ashish", "XXX120", "XXXX9560"),
                  );
                }),
            SizedBox(
              height: height * .03,
            ),
          ],
        ),
      )),
    );
  }
}
