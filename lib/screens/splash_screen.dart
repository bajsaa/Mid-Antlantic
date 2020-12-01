
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mid_antlantic/screens/select_drug_test_table.dart';
import 'package:mid_antlantic/size_config.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6),()=> Navigator.push(context, MaterialPageRoute(builder: (_){
      return DrugTestTable();
    })));
  }

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 11.160714 * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/logoblack.png",)),
            SizedBox(height: 4.23214 * SizeConfig.heightMultiplier,),
            SpinKitFoldingCube(color: Colors.black,
              size: 2.23214 * SizeConfig.heightMultiplier,
            )
          ],
        ),

      ),
    );
  }
}