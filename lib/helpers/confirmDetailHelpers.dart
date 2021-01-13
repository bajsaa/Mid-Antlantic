import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/FindLocation.dart';
import 'package:mid_antlantic/screens/TestListScreen.dart';
import 'package:mid_antlantic/screens/payment_screen.dart';
import 'package:mid_antlantic/screens/test_history.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../constants.dart';
import '../size_config.dart';

class ConfirmDetailHelpers with ChangeNotifier{
  final ConstantColors constantColors = ConstantColors();

  Widget confirmDetailAppbar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: constantColors.whiteColor,
      title: Text("Confirm Details", style: Constants.boldheading),
    );
  }

  Widget confirmDetailBody(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order Information", style: TextStyle(color: Colors.black, fontSize: 25), textAlign: TextAlign.start, ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Order Reason : PERIODIC"),
                          Text("Package : 10 PANEL URINE"),
                          Text("Company Location : MID ATLANTIC MOBILE DRUG Testing INC"),
                          Text("Owner Company Location :"),
                          Text("Date : Oct Thu 15 2020"),
                          Text("Collection Site: MID ATLANTIC MOBILE "),
                          Text("Location Code :"),
                          Text("Federal Agency :"),
                          Text("Observed Collection Required: No"),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Divider(color: Colors.black, thickness: 1,),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("View", style: TextStyle(fontSize: 20, color: Colors.black),),
                        SizedBox(height: 30,),
                        Text("First Name: ", style: TextStyle(color: Colors.black),),
                        Text("Last Name: ", style: TextStyle(color: Colors.black),),
                        Text("SSN: ", style: TextStyle(color: Colors.black),),
                        Text("DOB: ", style: TextStyle(color: Colors.black),),
                        Text("Email: ", style: TextStyle(color: Colors.black),),
                        Text("CC: ", style: TextStyle(color: Colors.black),),
                        Text("Phone 1: ", style: TextStyle(color: Colors.black),),
                        Text("Phone 2: ", style: TextStyle(color: Colors.black),),
                        Text("City: ", style: TextStyle(color: Colors.black),),
                        Text("State: ", style: TextStyle(color: Colors.black),),
                        Text("Zip: ", style: TextStyle(color: Colors.black),),
                      ],
                    ),
                  )


                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator
                          .of(context)
                          .pop();
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 1.273 * SizeConfig.widthMultiplier, right: 1.273 * SizeConfig.widthMultiplier, top: 1.5 * SizeConfig.heightMultiplier, bottom: 1.5 * SizeConfig.heightMultiplier),
                      width: 36.231 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black
                      ),
                      child: Center(
                        child: Text("PREVIOUS", style:TextStyle(
                          //16
                          fontSize: 1.7857 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 3.9511 * SizeConfig.widthMultiplier,),
                  GestureDetector(
                    onTap: (){
                     Navigator.push(context, PageTransition(child: PaymentScreen(), type: PageTransitionType.rightToLeftWithFade));
                    },
                    child:Container(
                      padding: EdgeInsets.only(left: 1.273 * SizeConfig.widthMultiplier, right: 1.273 * SizeConfig.widthMultiplier, top: 1.5 * SizeConfig.heightMultiplier, bottom: 1.5 * SizeConfig.heightMultiplier),
                      width:36.231 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black
                      ),
                      child: Center(
                        child: Text("CONFIRM", style:TextStyle(
                          //16
                          fontSize: 1.7857 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        ),
                      ) ,
                    ),
                  )
                ],
              ),
            ),
          )


        ],
      ),
    );
  }


  Widget confirmScreenBottomNavBar(BuildContext context){


    return BottomNavigationBar(
        type : BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedLabelStyle: TextStyle( fontSize: 16, color: Colors.black),
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black) ,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestListScreen()));
                  },
                  child: Image.asset("assets/images/testblack.png", height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Test"
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FindLocation()));
                },
                child: Image.asset("assets/images/locationblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
            label: "Location",

          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestHistory()));
                  },
                  child: Image.asset("assets/images/orderblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Order"
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){},
                  child: Image.asset("assets/images/profileblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Profile"
          ),
        ]
    );


  }

}