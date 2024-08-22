import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

class AccountCard {
  static Widget card(height, width, texttheme, String accountbalance,
      String name, String ifsc, String accountnumber) {
    return Container(
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
                      size: height * .05,
                    ),
                  ),
                  SizedBox(width: width * .01, height: 0.0),
                  SizedBox(
                    width: width * .2,
                    height: height * 1,
                    child: Center(
                      child: AutoSizeText(
                        name,
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
                      '\$$accountbalance',
                      style: texttheme.headlineSmall?.copyWith(),
                    ),
                  ),
                  SizedBox(width: 0.0, height: height * .005),
                  Text(
                    'A/C: $accountnumber',
                    style: texttheme.bodySmall?.copyWith(),
                  ),
                  SizedBox(width: 0.0, height: height * .005),
                  Text(
                    'IFSC: $ifsc',
                    style: texttheme.bodySmall?.copyWith(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
