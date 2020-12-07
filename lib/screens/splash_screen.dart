
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/screens/select_drug_test_table.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:mid_antlantic/widgets/welcome_buttons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Select_Drug_Screen.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 6),()=> Navigator.push(context, MaterialPageRoute(builder: (_){
  //     return FirstScreen();
  //   })));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(

            // gradient: LinearGradient(
            //     colors: [
            //
            //       Color(0XFF3D9798),
            //       Color(0XFF2E7FC0)],
            //
            //     begin: Alignment(0,0),
            //     end: Alignment(0,1)
            // )
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 100),
              margin: EdgeInsets.all(40),
                height: 28.160714 * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/newlogo.png",)
            ),
           // SizedBox(height: 5.58035 * SizeConfig.heightMultiplier,),
            // SpinKitFoldingCube(color: Colors.black,
            //   size: 2.23214 * SizeConfig.heightMultiplier,
            // )



           // SizedBox(height: 20.58035 * SizeConfig.heightMultiplier,),


            Column(
              children: [
                Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Website: ", style: TextStyle(color: Colors.black),),
                          GestureDetector(
                              onTap: () async {
                                const url = 'https://www.jerseydrugtesting.com';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Text("www.jerseydrugtesting.com", style: TextStyle(color: Colors.red), textAlign: TextAlign.center ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Email: ", style: TextStyle(color: Colors.black),),
                          GestureDetector(
                              onTap: () async {
                                const url = 'mailto:info@jerseydrugtesting.com';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Text("info@jerseydrugtesting.com",style: TextStyle(color: Colors.red), textAlign: TextAlign.center )
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Telephone no: ", style: TextStyle(color: Colors.black),),
                          GestureDetector(
                              onTap: () async {
                                const phone= 'tel: 732-356-8608';
                                if (await canLaunch(phone)) {
                                  await launch(phone);
                                } else {
                                  throw 'Could not launch $phone';
                                }
                              },
                              child: Text("(732)356-8608",style: TextStyle(color: Colors.red), textAlign: TextAlign.center )
                          )
                        ],
                      )



                    ],
                  ),
                ),
                // GestureDetector(
                //   onTap: (){
                //     showDialog(context: context, builder: (context){
                //       return Container(
                //         padding: EdgeInsets.only( top: 20.32142 * SizeConfig.heightMultiplier, bottom:13.32142 * SizeConfig.heightMultiplier,left: 20, right: 20),
                //         child: AlertDialog(
                //
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(50)
                //           ),
                //           title: Text("NOTICE",style: Constants.boldheading ,textAlign: TextAlign.center,),
                //           content:Text("On the next screen Select your drug test to proceed further.") ,
                //           actions: [
                //             FlatButton(
                //                 onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstScreen()));},
                //                 child: Text("Proceed", style: TextStyle(color:Colors.black ),)),
                //             FlatButton(
                //                 onPressed: (){Navigator.pop(context);},
                //                 child: Text("Exit", style: TextStyle(color:Colors.black ),))
                //           ],
                //         ),
                //       );
                //     }
                //     );
                //   },
                //   child: Container(
                //       child: Container(
                //         margin: EdgeInsets.all(3.5714 * SizeConfig.heightMultiplier),
                //         padding: EdgeInsets.all(2.23214 * SizeConfig.heightMultiplier),
                //         width: double.infinity,
                //         decoration: BoxDecoration(
                //             color: Colors.black,
                //             borderRadius: BorderRadius.circular(50.0)
                //         ),
                //         child: Center(
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 Text("Get Started",
                //                   style: TextStyle(color: Colors.white, fontSize: 2.785714 * SizeConfig.textMultiplier),
                //                 ),
                //
                //               ],
                //             )
                //         ),
                //       )
                //   ),
                // ),

                FittedBox(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ThreeButtons(),
                ))
              ],
            ),






          ],
        ),

      ),
    );
  }
}