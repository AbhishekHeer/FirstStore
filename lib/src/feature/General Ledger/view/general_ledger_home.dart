import 'package:auto_size_text/auto_size_text.dart';
import 'package:firststore/src/res/assets.dart';
import 'package:firststore/src/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/button.dart';

class GeneralLedgerHome extends StatefulWidget {
  const GeneralLedgerHome({super.key});

  @override
  State<GeneralLedgerHome> createState() => _GeneralLedgerHomeState();
}

class _GeneralLedgerHomeState extends State<GeneralLedgerHome> {
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
            Appbarhead.apphead(context, "Ledgers", height, width, texttheme),
            SizedBox(width: 0.0, height: height * .04),
            Container(
              height: height * .14,
              width: width * .92,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * .01),
                image: DecorationImage(
                    image: AssetImage(
                      general_ledger,
                    ),
                    fit: BoxFit.contain),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: height * .015, left: width * .03),
                    child: AutoSizeText(
                      'The Database for Money Movement.',
                      style:
                          texttheme.bodyMedium?.copyWith(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: height * .02, left: width * .03),
                    child: Text('Find Out more',
                        style: TextStyle(
                            color: Colors.white, fontSize: width * .025)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .1,
              width: width * .9,
              // decoration: const BoxDecoration(color: Colors.red),
              child: AutoSizeText(
                'How Modern Treasury helps you manage ledgers',
                style: texttheme.titleMedium,
              ),
            ),
            SizedBox(
              height: height * .12,
              width: width * .9,
              // decoration: const BoxDecoration(color: Colors.red),
              child: AutoSizeText(
                'Modern Treasury helps customers to track money, points or any other store of value in an accurate, scalable database. You can set the foundation for financial data integrity with a database tailor-made for products that move money.',
                style: texttheme.bodySmall,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: height * .12,
              width: width * .9,
              // decoration: const BoxDecoration(color: Colors.red),
              child: AutoSizeText(
                'Whether you track balances for customers or internal teams, we give you building blocks to create a ledger fit for your use case. Track balances in any currency using double-entry. Make them as granular as needed, or aggregate them by category.',
                textAlign: TextAlign.justify,
                style: texttheme.bodySmall,
              ),
            ),
            SizedBox(
              height: height * .12,
              width: width * .9,
              // decoration: const BoxDecoration(color: Colors.red),
              child: AutoSizeText(
                'Modern Treasury helps customers to track money, points or any other store of value in an accurate, scalable database. You can set the foundation for financial data integrity with a database tailor-made for products that move money.',
                style: texttheme.bodySmall,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: height * .01,
            ),
            SizedBox(
              height: height * .1,
              width: width * .9,
              // decoration: const BoxDecoration(color: Colors.red),
              child: AutoSizeText(
                'Read more',
                style: texttheme.bodySmall,
                textAlign: TextAlign.justify,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    context.pushNamed("/first_ledger");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: btncolor,
                        borderRadius: BorderRadius.circular(height * .01)),
                    width: width * .46,
                    height: height * .06,
                    child: Center(
                      child: Text(
                        "Create your first Ledger",
                        style: TextStyle(
                          color: textcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: width * .032,
                        ),
                      ),
                    ),
                  ),
                ),
                Button.button("Explore Ledgers", () {}, height, width * .8),
              ],
            )
          ],
        ),
      )),
    );
  }
}
