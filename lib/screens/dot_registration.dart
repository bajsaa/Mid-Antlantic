import 'package:mid_antlantic/images_path.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/Custom_back_forward_button.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_Observation.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_Reason.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'file:///F:/AndroidStudioProject/OFFICE-PROJECT-1/lib/images_path.dart';
import 'package:flutter/material.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_dot_agency.dart';
import 'package:mid_antlantic/widgets/custom_field.dart';
import '../images_path.dart';

import '../constants.dart';
 class DotRegistration extends StatefulWidget {
   @override
   _DotRegistrationState createState() => _DotRegistrationState();
 }

 class _DotRegistrationState extends State<DotRegistration> {




   @override
   Widget build(BuildContext context) {
     return Scaffold(
         resizeToAvoidBottomInset: false,
         extendBodyBehindAppBar: false,
         appBar: MyAppBar(title: Text("D.O.T",style: TextStyle(color: Colors.black)), appBar: AppBar(),),

       drawer: CustomDrawer(),


       body: Container(
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

                 Container(
                   child: Center(
                     child: Padding(
                       padding: EdgeInsets.all(2.0089 * SizeConfig.heightMultiplier),
                       child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text(
                         "You selected a DOT Drug test. All information below is required", style: TextStyle(fontSize: 2.23214 * SizeConfig.textMultiplier , color: Colors.black,),
                         textAlign: TextAlign.center,
                       ),
                       )
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
                       hintText: "Driver License",
                     ),

                     CustomInput(
                       hintText: "Driver License State Issues",
                     ),

                     Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Divider(color: Colors.black,),
                     ),

                     CustomInput(
                       hintText: "DOB",
                     ),

                     DropDownDotAgency(),
                     DropDownReason(),
                     DropDownObservation(),
                     CustomInput(
                       hintText: "Zip Code",
                     ),

                   ],
                 ),




                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CustomBackForwardDirectionBtn(),
                 )





               ],



             ),
           ),
         ),
       ),

         bottomNavigationBar:MyBottomNavBar("assets/images/testblack.png", "assets/images/locationblack.png", "assets/images/orderblack.png" ,"assets/images/profileblack.png" )


       );
   }
 }
 