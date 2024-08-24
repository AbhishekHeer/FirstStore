import 'package:firststore/src/feature/product/view/allproduct.dart';
import 'package:firststore/src/res/assets.dart';
import 'package:firststore/src/res/strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundcolor,

      //body
      body: SizedBox(
        height: height * .9,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width * .04),
                          child: const Icon(
                            FontAwesomeIcons.gripLines,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * .04),
                          child: InkWell(
                            onTap: () {
                              context.pushNamed('/contactus');
                            },
                            child: const Icon(
                              Icons.person_2_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: height * .02),
                  height: height * .17,
                  width: width * .9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(height * .025),
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(
                          home,
                        ),
                        fit: BoxFit.cover,
                      )),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: height * .02, left: width * .03),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Move Track And Reconcile Money in Real-Time',
                                style: TextStyle(
                                    color: backgroundcolor,
                                    fontSize: width * .04,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: height * .05, left: height * .02),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Find Out More',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * .027,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Allproduct(),
            ]),
          ),
        ),
      ),
    );
  }
}
