import 'package:mid_antlantic/screens/schedule_test_date.dart';
import 'package:mid_antlantic/screens/select_drug_test_table.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/Custom_back_forward_button.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import '../size_config.dart';
import 'file:///F:/AndroidStudioProject/OFFICE-PROJECT-1/lib/images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/custom_dropdown.dart';
import 'package:mid_antlantic/widgets/custom_field.dart';

import '../constants.dart';
class NonDotRegistration extends StatefulWidget {
  @override
  _NonDotRegistrationState createState() => _NonDotRegistrationState();
}

class _NonDotRegistrationState extends State<NonDotRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: false,
        appBar: MyAppBar(),

        drawer: CustomDrawer(),


        body: Container(
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
              child: SafeArea(
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
                          ResponsiveBuilder(builder: (context, sizingInformation)=>Text("NON D.O.T", style: Constants.boldheading,),)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18.5, right: 18.5),
                      alignment: Alignment.center,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(18),
                          child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text(
                            "You selected a Non DOT Drug test. All information below is required", style: TextStyle(fontSize: 2.23214 * SizeConfig.textMultiplier , color: Colors.white,),
                            textAlign: TextAlign.center,
                          ),)
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        CustomInput(
                          hintText: "First Name",
                        ),
                        CustomInput(
                          hintText: "Last Name",
                        ),
                        CustomInput(
                          hintText: "Phone",
                        ),
                        CustomInput(
                          hintText: "Donor Mail",
                        ),
                        CustomInput(
                          hintText: "Test Result sent to mail",
                        ),

                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Divider(color: Colors.white,),
                        ),

                        CustomInput(
                          hintText: "SS#",
                        ),

                        CustomInput(
                          hintText: "DOB",
                        ),

                        CustomInput(
                          hintText: "Driver License Country",
                        ),

                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Divider(color: Colors.white,),
                        ),

                        CustomInput(
                          hintText: "DOB",
                        ),

                        CustomDropDown(),
                        CustomDropDown(),
                        CustomDropDown(),
                        CustomInput(
                          hintText: "DOB",
                        ),

                      ],
                    ),



                    CustomBackForwardDirectionBtn()




                  ],



                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar:MyBottomNavBar(ImagesPath.testIcon, ImagesPath.locationIcon, ImagesPath.orderIcon, ImagesPath.profileIcon )


    );
  }
}
