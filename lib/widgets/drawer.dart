

import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/screens/Zoom_call.dart';
import 'package:mid_antlantic/screens/add_location.dart';
import 'package:mid_antlantic/screens/contact_us_screen.dart';
import 'package:mid_antlantic/screens/dot_registration.dart';
import 'package:mid_antlantic/screens/drug_test_helpLine.dart';
import 'package:mid_antlantic/screens/edit_dot_registration_form.dart';
import 'package:mid_antlantic/screens/edit_non_dot_registration_form.dart';
import 'package:mid_antlantic/screens/first_screen.dart';
import 'package:mid_antlantic/screens/not_dot_regtistration.dart';
import 'package:mid_antlantic/screens/schedule_test_date.dart';
import 'package:mid_antlantic/screens/select_drug_test_table.dart';
import 'package:mid_antlantic/screens/sucide_helpline.dart';
import 'package:mid_antlantic/screens/test_history.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:flutter/material.dart';
import '../screens/login_screen.dart';


class CustomDrawer extends  Drawer {
  CustomDrawer({this.title});

  final String title;



  @override
  Widget build(BuildContext context) {

var orientation = MediaQuery.of(context).orientation;
    return Drawer(


      child: Container(
        width: orientation == Orientation.portrait ? 250 : 100,
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         colors: [
        //           Color(0XFF3D9798),
        //           Color(0XFF2E7FC0)],
        //
        //         begin: Alignment(0, 0),
        //         end: Alignment(0, 1)
        //     )
        // ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[

              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginPage()));
                },
                child: ListTile(

                  leading: Icon(Icons.power_settings_new, color:Colors.black , size:6.9511 * SizeConfig.imageSizeMultiplier,),
                  title: Text("Sign On", style: Constants.regularDarkText,),

                ),
              ),

              Padding(
                padding: EdgeInsets.only(left:4.83091 * SizeConfig.widthMultiplier , right: 4.83091 * SizeConfig.widthMultiplier),
                child: Divider(color: Colors.black, thickness: 2,),
              ),
              ExpansionTile(
                leading: Icon(Icons.person, color: Colors.black, size: 6.9511 * SizeConfig.imageSizeMultiplier,),
                title: Text("Individual",style: Constants.regularDarkText),
                children: [
                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                    title: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                        },
                        child: Text("Schedule a Test", style: Constants.regularDarkText)),
                  ),

                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                      title: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestHistory()));
                          },
                          child: Text("Test History", style: Constants.regularDarkText)),
                  ),

                  ExpansionTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                    title: Text("Edit Profile", style: Constants.regularDarkText),
                    children: [

                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>EditDotRegistrationForm()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                          title: Text("D.O.T Profile", style: Constants.regularDarkText),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>EditNonDotRegistration()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                          title: Text("Non D.O.T Profile", style: Constants.regularDarkText),
                        ),
                      )
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                    title: GestureDetector(
                        onTap: (){
                          //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestHistory()));
                        },
                        child: Text("Cancel Test", style: Constants.regularDarkText)),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left:4.83091 * SizeConfig.widthMultiplier , right: 4.83091 * SizeConfig.widthMultiplier),
                child: Divider(color: Colors.black, thickness: 2,),
              ),
              ExpansionTile(
                leading: Icon(Icons.corporate_fare, color: Colors.black, size: 6.9511 * SizeConfig.imageSizeMultiplier,),
                title: Text("Corporation", style: Constants.regularDarkText),
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DotRegistration()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                      title: Text("Register your company", style: Constants.regularDarkText),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NonDotRegistration()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                      title: Text("Join a Random Selection", style: Constants.regularDarkText),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                    title: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstScreen()));
                      },
                        child: Text("Select A Drug Test", style: Constants.regularDarkText)
                    ),
                  ),
                ],
              ),

              Padding(
                padding:EdgeInsets.only(left:4.83091 * SizeConfig.widthMultiplier , right: 4.83091 * SizeConfig.widthMultiplier),
                child: Divider(color: Colors.black, thickness: 2,),
              ),
              ExpansionTile(
                leading: Icon(Icons.science, color: Colors.black, size: 6.9511 * SizeConfig.imageSizeMultiplier,),
                title: Text("Labs", style: Constants.regularDarkText),
                children: [
                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                    title: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FindLocation()));
                        },
                        child: Text("Find a direction to a local lab", style: Constants.regularDarkText)),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left:4.83091 * SizeConfig.widthMultiplier , right: 4.83091 * SizeConfig.widthMultiplier),
                child: Divider(color: Colors.black, thickness: 2,),
              ),
              ExpansionTile(
                leading: Icon(Icons.call, color: Colors.black, size: 6.9511 * SizeConfig.imageSizeMultiplier,),
                title: Text("Emergency HotLine Numbers", style: Constants.regularDarkText),
                children: [
                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                    title: GestureDetector(
                    onTap: (){
                        Navigator
                            .push(context,
                        MaterialPageRoute(builder: (_)=>DrugTestHelpLine())
                        );
                        },
                    child: Text("Drug Addiction HelpLine", style: Constants.regularDarkText)
    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                    title: GestureDetector(
                        onTap: (){
                          Navigator
                              .push(context,
                              MaterialPageRoute(builder: (_)=>SucideHelpLine())
                          );
                        },
                        child: Text("Suicide HelpLine", style: Constants.regularDarkText)
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(left:4.83091 * SizeConfig.widthMultiplier , right:4.83091 * SizeConfig.widthMultiplier),
                child: Divider(color: Colors.black, thickness: 2,),
              ),
              ExpansionTile(
                leading: Icon(Icons.help, color: Colors.black,size: 6.9511 * SizeConfig.imageSizeMultiplier, ),
                title: Text("Help", style: Constants.regularDarkText),
                children: [
                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                    title: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ContactUsScreen()));
                        },
                        child: Text("Contact Us", style: Constants.regularDarkText)),
                  ),
                  ListTile(
                    leading: Icon(Icons.subdirectory_arrow_right, color: Colors.black),
                    title: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ZoomCall()));
                        },
                        child: Text("Schedule a Zoom Call", style: Constants.regularDarkText)),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );

   // return new MultiLevelDrawer(
   //
   //
   //   divisionColor: Colors.white,
   //      subMenuBackgroundColor: Color(0xFF84C9FF),
   //      gradient: LinearGradient(
   //          colors: [
   //            Color(0XFF3D9798),
   //            Color(0XFF2E7FC0)],
   //
   //          begin: Alignment(0, 0),
   //          end: Alignment(0, 1)
   //
   //      ),
   //      header: Container(                  // Header for Drawer
   //        height: 32.926 * SizeConfig.heightMultiplier,
   //        width: 127.323 * SizeConfig.widthMultiplier,
   //        child: Center(child: Column(
   //          mainAxisAlignment: MainAxisAlignment.center,
   //          children: <Widget>[
   //            Image.asset("assets/images/logo1.png",width: 25.463 * SizeConfig.widthMultiplier, height: 25.463 * SizeConfig.heightMultiplier,),
   //
   //          ],
   //        )),
   //      ),
   //      children: [
   //        //SIGN IN MENU
   //        MLMenuItem(
   //            leading: Icon(Icons.power_settings_new, color:Color(0XFF84C9FF) , size:3.9511 * SizeConfig.imageSizeMultiplier,),
   //            trailing: Icon(Icons.arrow_right),
   //            content: Text("Sign In", style: TextStyle(fontFamily: "Poppins", fontSize: 2.048 * SizeConfig.textMultiplier, color: Colors.white)),
   //            subMenuItems:[
   //              MLSubmenu(
   //                onClick: () {},
   //                  submenuContent: Text("OPTION 1"),
   //
   //              ),
   //              MLSubmenu(
   //                onClick: () {},
   //                  submenuContent: Text("OPTION 2"),
   //
   //              )
   //            ] ,
   //            onClick: () {}
   //        ),
   //
   //        //INDVIDUAL MENU
   //        MLMenuItem(
   //            leading: Icon(Icons.person, color: Color(0XFF84C9FF), size: 3.9511 * SizeConfig.imageSizeMultiplier,),
   //            trailing: Icon(Icons.arrow_right),
   //            content: Text("Individual", style: TextStyle(fontFamily: "Poppins", fontSize: 2.048 * SizeConfig.textMultiplier, color: Colors.white)),
   //            subMenuItems:[
   //              MLSubmenu(
   //                onClick: () {},
   //                submenuContent: Text("OPTION 1"),
   //
   //              ),
   //              MLSubmenu(
   //                onClick: () {},
   //                submenuContent: Text("OPTION 2"),
   //
   //              ),
   //
   //            ] ,
   //            onClick: () {}
   //        ),
   //
   //        //CORPORATION MENU
   //        MLMenuItem(
   //            leading: Icon(Icons.corporate_fare, color: Color(0XFF84C9FF), size: 3.9511 * SizeConfig.imageSizeMultiplier,),
   //            trailing: Icon(Icons.arrow_right),
   //            content: Text("Corporation", style: TextStyle(fontFamily: "Poppins", fontSize: 2.048 * SizeConfig.textMultiplier, color: Colors.white)),
   //            subMenuItems:[
   //              MLSubmenu(
   //                onClick: () {},
   //                submenuContent: Text("OPTION 1"),
   //
   //              ),
   //              MLSubmenu(
   //                onClick: () {},
   //                submenuContent: Text("OPTION 2"),
   //
   //              ),
   //            ] ,
   //            onClick: () {}
   //        ),
   //
   //        //LABS MENU
   //        MLMenuItem(
   //            leading: Icon(Icons.science, color: Color(0XFF84C9FF), size: 3.9511 * SizeConfig.imageSizeMultiplier,),
   //            trailing: Icon(Icons.arrow_right),
   //            content: Text("Labs", style: TextStyle(fontFamily: "Poppins", fontSize: 2.048 * SizeConfig.textMultiplier, color: Colors.white)),
   //            subMenuItems:[
   //              MLSubmenu(
   //                onClick: () {},
   //                submenuContent: Text("OPTION 1"),
   //
   //              ),
   //              MLSubmenu(
   //                onClick: () {},
   //                submenuContent: Text("OPTION 2"),
   //
   //              ),
   //            ] ,
   //            onClick: () {}
   //        ),
   //
   //        //EMERGENCY MENU
   //        MLMenuItem(
   //            leading: Icon(Icons.call, color: Color(0XFF84C9FF), size: 3.9511 * SizeConfig.imageSizeMultiplier,),
   //            trailing: Icon(Icons.arrow_right),
   //            content: Text("Emergency\nNumbers",
   //                 style: TextStyle(fontFamily: "Poppins", fontSize: 2.048 * SizeConfig.textMultiplier, color: Colors.white)),
   //            subMenuItems:[
   //              MLSubmenu(
   //                onClick: () {},
   //                submenuContent: Text("OPTION 1"),
   //
   //              ),
   //              MLSubmenu(
   //                onClick: () {},
   //                submenuContent: Text("OPTION 2"),
   //
   //              ),
   //            ] ,
   //            onClick: () {}
   //        ),
   //
   //        //HELP MENU
   //        MLMenuItem(
   //            leading: Icon(Icons.help, color: Color(0XFF84C9FF),size: 3.9511 * SizeConfig.imageSizeMultiplier, ),
   //            trailing: Icon(Icons.arrow_right),
   //            content: Text("Help", style:TextStyle(fontFamily: "Poppins", fontSize: 2.048 * SizeConfig.textMultiplier, color: Colors.white)),
   //            subMenuItems:[
   //              MLSubmenu(
   //                onClick: () {
   //                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ContactUsScreen()));
   //                },
   //                submenuContent: Text("Contact Us"),
   //
   //              ),
   //              MLSubmenu(
   //                onClick: () {
   //                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ZoomCall()));
   //                },
   //                submenuContent: Text("Schedule Zoom Call"),
   //
   //              ),
   //            ] ,
   //            onClick: () {}
   //        ),
   //
   //
   //
   //
   //      ]
   //  );
  }

}
