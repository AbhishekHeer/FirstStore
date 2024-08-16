import 'package:firststore/src/res/assets.dart';
import 'package:firststore/src/res/strings.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EntityType extends StatefulWidget {
  const EntityType({super.key});

  @override
  State<EntityType> createState() => _EntityTypeState();
}

class _EntityTypeState extends State<EntityType> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                  'Multi-way Reconciliation',
                  style: texttheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * .07, top: height * .03),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Step 2: Select Entity Type',
                  style: texttheme.labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: height * .1,
              width: width,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage(businessman),
                    ),
                    SizedBox(width: 0.0, height: height * .01),
                    const Text('Individual')
                  ],
                ),

                //logo
                Column(
                  children: [
                    Image(
                      image: AssetImage(company),
                    ),
                    SizedBox(width: 0.0, height: height * .01),
                    const Text('Business')
                  ],
                ),
              ],
            ),
            // button
            SizedBox(width: 0.0, height: height * .08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button.button("Next", () {
                  context.pushNamed('/entity_details');
                }, height, width * .8),
              ],
            ),
            SizedBox(width: 0.0, height: height * .08),
          ],
        ),
      )),
    );
  }
}
