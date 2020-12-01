import 'package:mid_antlantic/sizeInfo.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/custom_back_order_button.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../images_path.dart';
import '../size_config.dart';


class ConfirmDetails extends StatefulWidget {
  @override
  _ConfirmDetailsState createState() => _ConfirmDetailsState();
}

class _ConfirmDetailsState extends State<ConfirmDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: false,
        appBar: MyAppBar(title: Text("Confirm Details", style: TextStyle(color: Colors.black),), appBar: AppBar(),),
        drawer: CustomDrawer(),

        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [


                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(

                      // decoration: BoxDecoration(
                      //     color: Colors.black12
                      // ),
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
                  ),


                  CustomBackOrderDirectionBtn()


                ],
              ),
            ),
          ),
        ),


        bottomNavigationBar:MyBottomNavBar(ImagesPath.testIcon, ImagesPath.locationIcon, ImagesPath.orderIcon, ImagesPath.profileIcon )



    );
  }
}



