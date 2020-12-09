import 'package:flutter/material.dart';
import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/screens/Select_Drug_Screen.dart';
import 'package:mid_antlantic/screens/splash_screen.dart';
import 'package:mid_antlantic/widgets/customButton.dart';

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

                CustomBtn(
                  text: "Back to Home",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>SplashScreen()));
                  },
                )

              ],
            ),
          ),
        ),


      ),
    );
  }
}
