import 'package:firststore/src/res/assets.dart';
import 'package:firststore/src/res/strings.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MtAi extends StatefulWidget {
  const MtAi({super.key});

  @override
  State<MtAi> createState() => _MtAiState();
}

class _MtAiState extends State<MtAi> {
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
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .08, bottom: height * .03),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Introduction',
                  style: texttheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text(
                    "MT - AI",
                    style: texttheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(width: 0.0, height: height * .03),
                SizedBox(
                  height: height * .4,
                  width: width,
                  child: Image(image: AssetImage(mt_ai)),
                ),
              ],
            ),
            SizedBox(
              height: height * .08,
              width: width * .9,
              child: Text(
                'Get to 100% reconciled faster than ever with an always running, self-improving reconciliation engine.',
                textAlign: TextAlign.center,
                style:
                    texttheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(width: 0.0, height: height * .03),
            Center(
              child: Button.meetingbtn("Try MT-AI", () {
                context.pushNamed('/recomain');
              }, height, width),
            )
          ],
        ),
      )),
    );
  }
}
