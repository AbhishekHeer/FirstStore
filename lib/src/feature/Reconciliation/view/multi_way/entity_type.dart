import 'package:firststore/src/feature/Reconciliation/controller/entity_type_controller.dart';
import 'package:firststore/src/res/assets.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

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
            Consumer<EntityTypeController>(builder: (context, ref, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      ref.changeindividual(true);
                      ref.changebusiness(false);
                    },

                    //individual
                    child: Stack(
                      children: [
                        ref.selected_individual == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: height * .01, left: height * .01),
                                child: Container(
                                  height: height * .03,
                                  width: height * .03,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(height * .2),
                                      color: Colors.green),
                                  child: const Center(
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        Container(
                          height: height * .2,
                          width: width * .4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(height * .02),
                              color: ref.selected_individual == true
                                  ? Colors.green.withOpacity(0.5)
                                  : Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image(
                                  image: AssetImage(businessman),
                                ),
                              ),
                              SizedBox(width: 0.0, height: height * .01),
                              const Text('Individual')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //logo
                  InkWell(
                    onTap: () {
                      ref.changeindividual(false);
                      ref.changebusiness(true);
                    },
                    child: Stack(
                      children: [
                        ref.selected_business == true
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: height * .01, left: height * .01),
                                child: Container(
                                  height: height * .03,
                                  width: height * .03,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(height * .2),
                                      color: Colors.green),
                                  child: const Center(
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                        Container(
                          height: height * .2,
                          width: width * .4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(height * .02),
                              color: ref.selected_business == true
                                  ? Colors.green.withOpacity(0.5)
                                  : Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image(
                                  image: AssetImage(company),
                                ),
                              ),
                              SizedBox(width: 0.0, height: height * .01),
                              const Text('Business')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }), // button
            SizedBox(width: 0.0, height: height * .08),
            Consumer<EntityTypeController>(builder: (context, ref, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button.button("Next", () {
                    if (ref.selected_business == true) {
                      context.pushNamed('/entity_details2');
                    }
                    if (ref.selected_individual == true) {
                      context.pushNamed('/entity_details');
                    }
                  }, height, width * .8),
                ],
              );
            }),
            SizedBox(width: 0.0, height: height * .08),
          ],
        ),
      )),
    );
  }
}
