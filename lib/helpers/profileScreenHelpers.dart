import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/login_screen.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:page_transition/page_transition.dart';


import '../constants.dart';


class ProfileScreenHelpers with ChangeNotifier{
  final ConstantColors constantColors = ConstantColors();



  Widget profileScreenAppbar(BuildContext context){
    return AppBar(
      leading: GestureDetector(onTap:(){Navigator.pop(context);},child: Icon(Icons.arrow_back, color: constantColors.darkColor,)),
      backgroundColor: constantColors.whiteColor,
      title: Text("Profile", style: Constants.boldheading),
    );
  }


  Widget profileScreenBody(BuildContext context){
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 60,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Text("Name:", style: Constants.regularHeading,),
                  trailing: Text("example", style: Constants.regularHeading,),
                ),
                ListTile(
                  leading: Text("Email:", style: Constants.regularHeading,),
                  trailing: Text("example@example.com", style: Constants.regularHeading,),
                ),
                ListTile(
                  leading: Text("Phone:", style: Constants.regularHeading,),
                  trailing: Text("99999999999", style: Constants.regularHeading,),
                ),
              ],
            ),

            Column(
              children: [
                IconButton(icon: Icon(Icons.logout), onPressed: (){Navigator.pushReplacement(context, PageTransition(child: LoginPage(), type: PageTransitionType.topToBottom));}, color: Colors.black,iconSize: 30,),
                Text("Log Out", style: Constants.regularHeading,)
              ],
            )

          ],
        ),
      ) ,
    );
  }


}