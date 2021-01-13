import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/FindLocation.dart';
import 'package:mid_antlantic/screens/TestListScreen.dart';
import 'package:mid_antlantic/screens/test_history.dart';
import 'package:mid_antlantic/widgets/colors.dart';

import '../constants.dart';
import '../size_config.dart';

class TestHistoryHelpers with ChangeNotifier{
  final ConstantColors constantColors = ConstantColors();

  Widget testHistoryAppbar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: constantColors.whiteColor,
      title: Text("TestHistory", style: Constants.boldheading),
    );
  }

  Widget testHistoryBody(BuildContext context) {
    return SingleChildScrollView(
      child:  Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(

              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order Information", style: TextStyle(color: Colors.black, fontSize: 2.790178 * SizeConfig.textMultiplier), textAlign: TextAlign.start, ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        children: [
                          GestureDetector(
                              onTap:(){

                              },
                              child: Icon(Icons.remove_red_eye, size: 5.580357 * SizeConfig.heightMultiplier, )
                          ),
                          //Image.asset("assets/images/eyeblack.png"),
                          SizedBox(height: 10,),
                          GestureDetector(
                              onTap: (){
                                Icon(Icons.print, size: 5.580357 * SizeConfig.heightMultiplier, color: Colors.blue,);
                              },
                              child: Icon(Icons.print, size: 5.580357 * SizeConfig.heightMultiplier,)),
                          //Image.asset("assets/images/printblack.png"),
                          SizedBox(height: 10,),
                          GestureDetector(
                              onTap: (){
                                Icon(Icons.mail_outline_outlined, size: 5.580357 * SizeConfig.heightMultiplier, color: Colors.blue,);
                              },
                              child: Icon(Icons.mail_outline_outlined, size: 5.580357 * SizeConfig.heightMultiplier, )),
                          //Image.asset("assets/images/mailblack.png"),
                          SizedBox(height: 10,),
                          GestureDetector(
                              onTap: (){
                                Icon(Icons.picture_as_pdf_rounded, size: 5.580357 * SizeConfig.heightMultiplier,color: Colors.blue, );
                              },
                              child: Icon(Icons.picture_as_pdf_rounded, size: 5.580357 * SizeConfig.heightMultiplier, )),
                          //Image.asset("assets/images/pdfblack.png"),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 7.24637 * SizeConfig.widthMultiplier, right: 7.24637 * SizeConfig.widthMultiplier),
                      child: Divider(color: Colors.black, thickness: 1.5,),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("View", style: TextStyle(fontSize: 2.232142 * SizeConfig.textMultiplier, color: Colors.black),),
                          SizedBox(height: 3.348214285714286 * SizeConfig.heightMultiplier,),
                          Text("First Name: ", style: TextStyle(color: Colors.black),),
                          Text("Last Name: ", style: TextStyle(color: Colors.black),),
                          Text("MRO Results: ", style: TextStyle(color: Colors.black),),
                          Text("CCF/Test Number: ", style: TextStyle(color: Colors.black),),
                          Text("Report Date: ", style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    )


                  ],
                ),
              ),
            ),
          ),





        ],
      ),
    );
  }

  Widget testHistoryBottomNavBar(BuildContext context){


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