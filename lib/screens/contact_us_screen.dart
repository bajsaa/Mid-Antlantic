import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/Custom_taxtfield_maxlines.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/custom_field.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../images_path.dart';


class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        extendBodyBehindAppBar: false,
        appBar: MyAppBar(),
        drawer: CustomDrawer(),

        body:Container(
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
                  Center(
                    child: Container(
                      child: Text("Contact Us", style: Constants.boldheading,)

                    ),
                  ),
                  SizedBox(height: 120,),

                  Column(
                    children: [
                      CustomInput(
                        hintText: "Name",
                      ),
                      CustomInput(
                        hintText: "Email",
                      ),
                      CustomInput(
                        hintText: "Phone",
                      ),
                      CustomTextFieldMaxLines(hintText: "Describe help needed",),

                      CustomBtn(text: "Submit",)
                    ],
                  ),



                ],
              ),
            ),
          ),
        ),

      bottomNavigationBar: MyBottomNavBar(ImagesPath.testIcon, ImagesPath.locationIcon, ImagesPath.orderIcon, ImagesPath.profileIcon)



    );
  }
}
