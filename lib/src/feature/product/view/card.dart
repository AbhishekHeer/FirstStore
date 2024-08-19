import 'package:firststore/src/models/cardmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  String productname;
  String productdescription;
  String productimage;
  ProductCard(
      {super.key,
      required this.productname,
      required this.productdescription,
      required this.productimage});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;
    return Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(height * .005),
        ),
        color: const Color.fromRGBO(255, 255, 255, 1.0),
        child: SizedBox(
          width: width * .47,
          height: height * .28,
          child: Column(children: [
            SizedBox(width: 0.0, height: height * .01),
            Container(
              // padding: EdgeInsets.all(height * .02),
              height: height * .16,
              width: width * .43,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  productimage,
                ),
                fit: BoxFit.contain,
              )),
            ),
            Container(
              padding: EdgeInsets.only(top: height * .004),
              height: height * .06,
              width: width * .45,
              child: InkWell(
                onTap: () {
                  final Cardmodel cardmodel = Cardmodel(
                      imageUrl: productimage,
                      productName: productname,
                      productDiscription: productdescription);
                  context.pushNamed('/paymentpage', extra: cardmodel);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * .03),
                      child: Text(
                        productname,
                        style:
                            texttheme.labelLarge?.copyWith(color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width * .03),
                      child: const Icon(CupertinoIcons.arrow_right),
                    )
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: height * .01),
                height: height * .05,
                width: width * .47,
                child: Text(
                  productdescription,
                  style: texttheme.labelSmall?.copyWith(color: Colors.black),
                )),
          ]),
        ));
  }
}
