import 'package:firststore/src/models/cardmodel.dart';
import 'package:firststore/src/res/strings.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Paymentpage extends StatefulWidget {
  final Cardmodel cardmodel;
  const Paymentpage({super.key, required this.cardmodel});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
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
            Center(
              child: Container(
                  height: height * .07,
                  width: width,
                  margin:
                      EdgeInsets.only(left: width * .05, right: width * .05),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * .02),
                      color: greencolor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * .04),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                context.pop();
                              },
                              child: const Icon(
                                CupertinoIcons.left_chevron,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: width * .03, height: 0.0),
                            Text(
                              'Payments',
                              style: texttheme.titleMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(width: 0.0, height: height * .04),
            Container(
              height: height * .4,
              width: width * .9,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.cardmodel.imageUrl),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 0.0, height: height * .01),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Text(
                      widget.cardmodel.productName,
                      style:
                          texttheme.titleSmall?.copyWith(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Gain access to growth capital with Modern Treasury.',
                      style:
                          texttheme.titleLarge?.copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            //state items
            Padding(
              padding: EdgeInsets.only(left: width * .1, top: height * .04),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        const Icon(CupertinoIcons.location_solid),
                        SizedBox(width: width * .04, height: 0.0),
                        Text(
                          'United States',
                          style: texttheme.bodyMedium
                              ?.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //payment
            Padding(
              padding: EdgeInsets.only(left: width * .1, top: height * .02),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        const Icon(Icons.payment),
                        SizedBox(width: width * .04, height: 0.0),
                        Text(
                          'Payments',
                          style: texttheme.bodyMedium
                              ?.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //ACH, Same day ACH
            Padding(
              padding: EdgeInsets.only(left: width * .1, top: height * .02),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        const Icon(FontAwesomeIcons.moneyBill),
                        SizedBox(width: width * .04, height: 0.0),
                        Text(
                          'ACH, Same day ACH',
                          style: texttheme.bodyMedium
                              ?.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //Financial Services
            Padding(
              padding: EdgeInsets.only(left: width * .1, top: height * .02),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        const Icon(CupertinoIcons.cube),
                        SizedBox(width: width * .04, height: 0.0),
                        Text(
                          'Financial Services',
                          style: texttheme.bodyMedium
                              ?.copyWith(color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: SizedBox(
        height: height * .1,
        width: width,
        child: Center(
          child: Button.meetingbtn("Talk to Us", () {}, height, width),
        ),
      ),
    );
  }
}
