import 'package:firststore/src/res/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/button.dart';

class SubsidiaryHome extends StatefulWidget {
  const SubsidiaryHome({super.key});

  @override
  State<SubsidiaryHome> createState() => _SubsidiaryHomeState();
}

class _SubsidiaryHomeState extends State<SubsidiaryHome> {
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
                  'Subsidiary Ledgers',
                  style: texttheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w400, fontSize: height * .023),
                ),
              ),
            ),
            SizedBox(width: 0.0, height: height * .0),
            Center(
              child: Container(
                height: height * .3,
                width: width * .7,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(subsidiary),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.none)),
              ),
            ),
            Text(
              'Empowering Clarity: ',
              style: texttheme.titleMedium?.copyWith(),
            ),
            SizedBox(
              height: height * .01,
            ),
            Text(
              'Every Transaction, Every Detail',
              style: texttheme.titleMedium?.copyWith(),
            ),
            SizedBox(
              height: height * .1,
            ),
            Button.button("Create ledger", () {
              context.pushNamed('/subsidiary_customer_info');
            }, height, width * 1.3),
            SizedBox(
              height: height * .03,
            ),
            Button.button("Views accounts", () {}, height, width * 1.3),
          ],
        ),
      )),
    );
  }
}
