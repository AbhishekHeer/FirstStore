import 'package:firststore/src/feature/product/view/card.dart';
import 'package:firststore/src/res/assets.dart';
import 'package:flutter/material.dart';

class Allproduct extends StatefulWidget {
  const Allproduct({super.key});

  @override
  State<Allproduct> createState() => _AllproductState();
}

class _AllproductState extends State<Allproduct> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final texttheme = Theme.of(context).textTheme;

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: height * .03, left: width * .06),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Our Products',
              style: texttheme.titleLarge?.copyWith(color: Colors.black),
            ),
          ),
        ),
        SizedBox(width: 0.0, height: height * .025),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProductCard(
              productname: "Parafin",
              productdescription:
                  "Gain Access to grow capital with modern treasury",
              productimage: payment_one,
            ),
            ProductCard(
              productname: "Navan",
              productdescription:
                  "Re-imagine expense management with Modern Treasury.",
              productimage: payment_two,
            ),
          ],
        ),
        SizedBox(width: 0.0, height: height * .01),
        Row(
          children: [
            ProductCard(
              productname: "Outdoorsy",
              productdescription: "Lorem ipsum dolor sit amet",
              productimage: payment_three,
            ),
            ProductCard(
              productname: "C2FO",
              productdescription: "Lorem ipsum dolor sit amet",
              productimage: payment_four,
            ),
          ],
        )
      ],
    );
  }
}
