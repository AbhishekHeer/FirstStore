import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:firststore/src/utils/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntercompanyEntityType extends StatefulWidget {
  const IntercompanyEntityType({super.key});

  @override
  State<IntercompanyEntityType> createState() => _IntercompanyEntityTypeState();
}

SingleValueDropDownController entity1 = SingleValueDropDownController();
SingleValueDropDownController entity2 = SingleValueDropDownController();

class _IntercompanyEntityTypeState extends State<IntercompanyEntityType> {
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
            Appbarhead.apphead(
                context, "Reconciliation", height, width, texttheme),
            SizedBox(width: 0.0, height: height * .04),
            Padding(
              padding: EdgeInsets.only(left: width * .07),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Intercompany Reconciliation',
                  style: texttheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w400, fontSize: height * .023),
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
            //entity 1
            TextFeild.dropdowntextfield(width, height, "Entity 1", entity1, [
              const DropDownValueModel(name: "Individual", value: "Individual"),
              const DropDownValueModel(name: "Business", value: "Business"),
            ]),
            SizedBox(width: 0.0, height: height * .1),
            TextFeild.dropdowntextfield(width, height, "Entity 2", entity2, [
              const DropDownValueModel(name: "Individual", value: "Individual"),
              const DropDownValueModel(name: "Business", value: "Business"),
            ]),
            SizedBox(width: 0.0, height: height * .15),
            Button.button("Next", () {
              context.pushNamed("/intercompany_individual");
            }, height, width * .8)
          ],
        ),
      )),
    );
  }
}
