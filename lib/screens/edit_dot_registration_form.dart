import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'file:///F:/AndroidStudioProject/OFFICE-PROJECT-1/lib/images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mid_antlantic/widgets/Custom_back_forward_button.dart';

import 'package:mid_antlantic/widgets/custom_dropdown.dart';
import 'package:mid_antlantic/widgets/custom_field.dart';

import '../constants.dart';
class EditDotRegistrationForm extends StatefulWidget {
  @override
  _EditDotRegistrationFormState createState() => _EditDotRegistrationFormState();
}

class _EditDotRegistrationFormState extends State<EditDotRegistrationForm> {
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
                      margin: EdgeInsets.only(left: 18.5, right: 18.5),
                      padding: EdgeInsets.only(top: 20, left: 30, right: 120, bottom: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: (){
                                Navigator.of(context).pop();
                              },
                              child: Icon(Icons.keyboard_arrow_left_sharp, color: Colors.white,)

                          ),

                          Spacer(),
                          Text("D.O.T", style: Constants.boldheading,)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18.5, right: 18.5),
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(18),
                            child: Text(
                              "You selected a Non DOT Drug test. All information below is required", style: TextStyle(fontSize: 20 , color: Colors.white),
                            ),
                          ),
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
                          hintText: "Driver License",
                        ),

                        CustomInput(
                          hintText: "Driver License State Issues",
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
                        CustomDropDown( ),
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

        bottomNavigationBar: MyBottomNavBar(ImagesPath.testIcon, ImagesPath.locationIcon, ImagesPath.orderIcon, ImagesPath.profileIcon )


    );
  }
}
