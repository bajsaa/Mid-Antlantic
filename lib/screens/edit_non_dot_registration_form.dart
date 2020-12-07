import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/Custom_back_forward_button.dart';
import 'package:mid_antlantic/widgets/Custom_taxtfield_maxlines.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/custom_back_forward_button_edit.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_reason_nondot.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import '../size_config.dart';
import 'file:///F:/AndroidStudioProject/OFFICE-PROJECT-1/lib/images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_dot_agency.dart';
import 'package:mid_antlantic/widgets/custom_field.dart';

import '../constants.dart';
class EditNonDotRegistration extends StatefulWidget {
  @override
  _EditNonDotRegistrationState createState() => _EditNonDotRegistrationState();
}

class _EditNonDotRegistrationState extends State<EditNonDotRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: false,
        appBar: MyAppBar(title: Text("Edit Non D.O.T",style: TextStyle(color: Colors.black)), appBar: AppBar(),),

        drawer: CustomDrawer(),


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
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [

                  Container(
                    margin: EdgeInsets.only(left: 18.5, right: 18.5),
                    alignment: Alignment.center,
                    child: Center(
                      child: Padding(
                          padding: EdgeInsets.all(18),
                          child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text(
                            "You selected Non DOT Drug test is an effective test for to identify drug use and discourage consumption of illicit substances.", style: TextStyle(fontSize: 2.23214 * SizeConfig.textMultiplier , color: Colors.black,),
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
                        child: Divider(color: Colors.black,),
                      ),

                      CustomInput(
                        hintText: "SS#",
                      ),

                      CustomInput(
                        hintText: "DOB",
                      ),

                      DropDownReasonNonDot(),
                      CustomTextFieldMaxLines(hintText: "Message/Comment",),
                      CustomInput(
                        hintText: "Zip Code",
                      ),

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomBackForwardDirectionEditBtn(),
                  )






                ],



              ),
            ),
          ),
        ),

        //bottomNavigationBar:MyBottomNavBar("assets/images/test.png", "assets/images/location.png", "assets/images/order.png" ,"assets/images/Profile.png" )
        bottomNavigationBar:MyBottomNavBar("assets/images/testblack.png", "assets/images/locationblack.png", "assets/images/orderblack.png" ,"assets/images/profileblack.png" )



    );
  }
}
