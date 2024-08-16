import 'package:firststore/src/res/assets.dart';
import 'package:firststore/src/res/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReconciliationMain extends StatefulWidget {
  const ReconciliationMain({super.key});

  @override
  State<ReconciliationMain> createState() => _ReconciliationMainState();
}

class _ReconciliationMainState extends State<ReconciliationMain> {
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
                              'Reconciliation',
                              style: texttheme.titleMedium
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(width: 0.0, height: height * .03),
            Padding(
              padding: EdgeInsets.only(left: width * .05),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Reconciliation',
                    style: texttheme.headlineMedium
                        ?.copyWith(fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .05),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Reconcile with Precision at Scale.',
                    style: texttheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(width: 0.0, height: height * .06),
            Container(
              height: height * .35,
              width: width * .9,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(reco_main), fit: BoxFit.cover)),
            ),
            SizedBox(width: 0.0, height: height * .06),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    context.pushNamed('/usercase');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: btncolor,
                        borderRadius: BorderRadius.circular(height * .01)),
                    width: width * .4,
                    height: height * .07,
                    child: const Center(
                      child: Text(
                        "Talk to Us",
                        style: TextStyle(
                            color: textcolor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(height * .01)),
                    width: width * .4,
                    height: height * .07,
                    child: const Center(
                      child: Text(
                        "Explore more",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
