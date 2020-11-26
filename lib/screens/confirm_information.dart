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
        appBar: MyAppBar(),
        drawer: CustomDrawer(),

        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [

                    Color(0XFF3D9798),
                    Color(0XFF2E7FC0)],

                  begin: Alignment(0,0),
                  end: Alignment(0,1)
              )
          ),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [

                  Container(
                    width: MediaQuery.of(context).size.width,
                    //30
                    margin: EdgeInsets.only(left: 7.246 * SizeConfig.widthMultiplier , right: 7.246 * SizeConfig.widthMultiplier),
                    //10
                    padding: EdgeInsets.only(top: 1.1160 * SizeConfig.heightMultiplier, left: 1.1160 * SizeConfig.widthMultiplier, right: 1.1160 * SizeConfig.widthMultiplier, bottom: 1.1160 * SizeConfig.heightMultiplier),
                    child: Row(

                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: ResponsiveBuilder(
                              builder: (context, sizingInformation)=>Icon(
                                Icons.keyboard_arrow_left_sharp,
                                color: Colors.white,
                                size: 7.2463 * SizeConfig.imageSizeMultiplier,),)

                        ),

                        //20
                        SizedBox(width: 4.8309 * SizeConfig.widthMultiplier),
                        ResponsiveBuilder(builder: (context, sizingInformation)=>Text("Confirm Details", style: Constants.boldheading,),),

                      ],
                    ),
                  ),

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
                            Text("Order Information", style: TextStyle(color: Color(0xFF409A93), fontSize: 25), textAlign: TextAlign.start, ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(

                                children: [
                                  Image.asset("assets/images/eye.png"),
                                  SizedBox(height: 10,),
                                  Image.asset("assets/images/print.png"),
                                  SizedBox(height: 10,),
                                  Image.asset("assets/images/mail.png"),
                                  SizedBox(height: 10,),
                                  Image.asset("assets/images/pdf.png"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, right: 30),
                              child: Divider(color: Color(0xFF3D9798), thickness: 1,),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("View", style: TextStyle(fontSize: 20, color: Color(0xFF2E80BC)),),
                                  SizedBox(height: 30,),
                                  Text("First Name: ", style: TextStyle(color: Color(0xFF409A93)),),
                                  Text("Last Name: ", style: TextStyle(color: Color(0xFF409A93)),),
                                  Text("MRO Results: ", style: TextStyle(color: Color(0xFF409A93)),),
                                  Text("CCF/Test Number: ", style: TextStyle(color: Color(0xFF409A93)),),
                                  Text("Report Date: ", style: TextStyle(color: Color(0xFF409A93)),),
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



