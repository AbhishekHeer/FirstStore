import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/button.dart';

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
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Account Balances',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(width: 0.0, height: height * .03),
            //balance box
            Container(
                height: height * .14,
                width: width * .9,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(height * .02)),
                child: Row(
                  children: [
                    SizedBox(
                      height: height * .14,
                      width: width * .45,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width * .04),
                            child: Icon(
                              CupertinoIcons.profile_circled,
                              size: height * .04,
                            ),
                          ),
                          SizedBox(width: width * .04, height: 0.0),
                          SizedBox(
                            width: width * .2,
                            height: height * 1,
                            child: Center(
                              child: AutoSizeText(
                                'Ashish',
                                style: texttheme.bodyLarge?.copyWith(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .14,
                      width: width * .4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: height * .01),
                            child: Text(
                              '\$1,323.45',
                              style: texttheme.headlineSmall?.copyWith(),
                            ),
                          ),
                          SizedBox(width: 0.0, height: height * .005),
                          Text(
                            'A/C: XXXX9560',
                            style: texttheme.bodySmall?.copyWith(),
                          ),
                          SizedBox(width: 0.0, height: height * .005),
                          Text(
                            'IFSC: XXX120',
                            style: texttheme.bodySmall?.copyWith(),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            //second box
            SizedBox(width: 0.0, height: height * .02),
            Container(
                height: height * .14,
                width: width * .9,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(height * .02)),
                child: Row(
                  children: [
                    SizedBox(
                      height: height * .14,
                      width: width * .45,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width * .04),
                            child: Icon(
                              CupertinoIcons.profile_circled,
                              size: height * .04,
                            ),
                          ),
                          SizedBox(width: width * .04, height: 0.0),
                          SizedBox(
                            width: width * .2,
                            height: height * 1,
                            child: Center(
                              child: AutoSizeText(
                                'Paresh Trader',
                                style: texttheme.bodyLarge?.copyWith(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .14,
                      width: width * .4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: height * .01),
                            child: Text(
                              '\$1,323.45',
                              style: texttheme.headlineSmall?.copyWith(),
                            ),
                          ),
                          SizedBox(width: 0.0, height: height * .005),
                          Text(
                            'A/C: XXXX9560',
                            style: texttheme.bodySmall?.copyWith(),
                          ),
                          SizedBox(width: 0.0, height: height * .005),
                          Text(
                            'IFSC: XXX120',
                            style: texttheme.bodySmall?.copyWith(),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
