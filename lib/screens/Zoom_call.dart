import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/Custom_taxtfield_maxlines.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/custom_field.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../images_path.dart';


class ZoomCall extends StatefulWidget {
  @override
  _ZoomCallState createState() => _ZoomCallState();
}

class _ZoomCallState extends State<ZoomCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        extendBodyBehindAppBar: false,
        appBar: MyAppBar(title: Text("Zoom Call",style: TextStyle(color: Colors.black)), appBar: AppBar(),),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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

              CustomBtn(text: "Schedule Zoom Call",),

              Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Website: ", style: TextStyle(color: Colors.black),),
                        GestureDetector(
                            onTap: () async {
                              const url = 'https://www.jerseydrugtesting.com';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Text("www.jerseydrugtesting.com", style: TextStyle(color: Colors.red), textAlign: TextAlign.center ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Email: ", style: TextStyle(color: Colors.black),),
                        GestureDetector(
                            onTap: () async {
                              const url = 'mailto:info@jerseydrugtesting.com';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Text("info@jerseydrugtesting.com",style: TextStyle(color: Colors.red), textAlign: TextAlign.center )
                        )
                      ],
                    ),



                  ],
                ),
              ),

            ],
          ),
        ),

        bottomNavigationBar: MyBottomNavBar(ImagesPath.testIcon, ImagesPath.locationIcon, ImagesPath.orderIcon, ImagesPath.profileIcon)



    );
  }
}
