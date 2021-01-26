

import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/login_screen.dart';
import 'package:mid_antlantic/screens/registerCompanyForm.dart';




import 'package:mid_antlantic/size_config.dart';
import 'package:page_transition/page_transition.dart';


import 'package:url_launcher/url_launcher.dart';
import 'TestListScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


double sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context){
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //TODO: LOGO
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset("assets/images/newlogo.png"),
            ),

            //TODO: THREE BUTTONS COLUMN
            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(child: LoginPage(), type:PageTransitionType.rightToLeft));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 6.111 * SizeConfig.widthMultiplier,
                        vertical: 1 * SizeConfig.heightMultiplier),
                    height: 7.90 * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Colors.white,
                          width: 1 * SizeConfig.widthMultiplier),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 2.107 * SizeConfig.textMultiplier,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(child: TestListScreen(), type:PageTransitionType.leftToRightWithFade));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 6.111 * SizeConfig.widthMultiplier,
                        vertical: 1 * SizeConfig.heightMultiplier),
                    height: 7.90 * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Colors.white,
                          width: 1 * SizeConfig.widthMultiplier),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        "Register Individual Account ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 2.107 * SizeConfig.textMultiplier,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(child: RegisterCompanyForm(), type:PageTransitionType.leftToRight));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 6.111 * SizeConfig.widthMultiplier,
                        vertical: 1 * SizeConfig.heightMultiplier),
                    height: 7.90 * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Colors.white,
                          width: 1 * SizeConfig.widthMultiplier),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        "Register Company",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 2.107 * SizeConfig.textMultiplier,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // GestureDetector(
                //   onTap: (){
                //     SnackBar snackBar = SnackBar(content: Text("Coming Soon"),duration: Duration(milliseconds: 2000),);
                //     Scaffold.of(context).showSnackBar(snackBar);
                //   },
                //   child: Container(
                //     margin: EdgeInsets.symmetric(
                //         horizontal: 6.111 * SizeConfig.widthMultiplier,
                //         vertical: 1 * SizeConfig.heightMultiplier),
                //     height: 7.90 * SizeConfig.heightMultiplier,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(30),
                //       border: Border.all(
                //           color: Colors.white,
                //           width: 1 * SizeConfig.widthMultiplier),
                //       color: Colors.black,
                //     ),
                //     child: Center(
                //       child: Text(
                //         "Background Check",
                //         style: TextStyle(
                //             fontWeight: FontWeight.w600,
                //             fontSize: 2.107 * SizeConfig.textMultiplier,
                //             color: Colors.white),
                //       ),
                //     ),
                //   ),
                // ),
                // GestureDetector(
                //   onTap: (){
                //     SnackBar snackBar = SnackBar(content: Text("Coming Soon"),duration: Duration(milliseconds: 2000),);
                //     Scaffold.of(context).showSnackBar(snackBar);
                //   },
                //   child: Container(
                //     margin: EdgeInsets.symmetric(
                //         horizontal: 6.111 * SizeConfig.widthMultiplier,
                //         vertical: 1 * SizeConfig.heightMultiplier),
                //     height: 7.90 * SizeConfig.heightMultiplier,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(30),
                //       border: Border.all(
                //           color: Colors.white,
                //           width: 1 * SizeConfig.widthMultiplier),
                //       color: Colors.black,
                //     ),
                //     child: Center(
                //       child: Text(
                //         "DNA Testing",
                //         style: TextStyle(
                //             fontWeight: FontWeight.w600,
                //             fontSize: 2.107 * SizeConfig.textMultiplier,
                //             color: Colors.white),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),

            //TODO: THREE Links COLUMN
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Website: ", style: TextStyle(color: Colors.black, fontSize: 16),),
                            GestureDetector(
                                onTap: () async {
                                  const url = 'https://www.jerseydrugtesting.com';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: Text("www.jerseydrugtesting.com", style: TextStyle(color: Colors.red, fontSize: 16), textAlign: TextAlign.center,  ))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Email: ", style: TextStyle(color: Colors.black, fontSize: 16),),
                            GestureDetector(
                                onTap: () async {
                                  const url = 'mailto:info@jerseydrugtesting.com';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: Text("info@jerseydrugtesting.com",style: TextStyle(color: Colors.red, fontSize: 16), textAlign: TextAlign.center )
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Telephone no: ", style: TextStyle(color: Colors.black, fontSize: 16),),
                            GestureDetector(
                                onTap: () async {
                                  const phone= 'tel: 732-356-8608';
                                  if (await canLaunch(phone)) {
                                    await launch(phone);
                                  } else {
                                    throw 'Could not launch $phone';
                                  }
                                },
                                child: Text("(732)356-8608",style: TextStyle(color: Colors.red, fontSize: 16), textAlign: TextAlign.center )
                            )
                          ],
                        )



                      ],
                    ),
                  ),
                ),

                // FittedBox(child: Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: ThreeButtons(),
                // ))
              ],
            ),
          ],
        );
      })
    );
  }
}