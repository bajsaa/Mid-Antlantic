import 'package:flutter/material.dart';
import 'package:mid_antlantic/constants.dart';

import 'package:mid_antlantic/screens/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../size_config.dart';

class ThankYouScreen extends StatefulWidget {
  @override
  _ThankYouScreenState createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         colors: [
        //
        //           Color(0XFF3D9798),
        //           Color(0XFF2E7FC0)],
        //
        //         begin: Alignment(0,0),
        //         end: Alignment(0,1)
        //     )
        // ),
        child: Container(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text("Thank You", style: Constants.boldheading,),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(child: SplashScreen(), type: PageTransitionType.rightToLeftWithFade));

                  },
                  child: Container(
                    height: 7.90 * SizeConfig.heightMultiplier,
                    margin:
                    EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.white, width: 1 * SizeConfig.widthMultiplier),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Back to home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),


      ),
    );
  }
}
