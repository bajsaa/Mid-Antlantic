import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/FindLocation.dart';
import 'package:mid_antlantic/screens/TestListScreen.dart';
import 'package:mid_antlantic/screens/confirmDetailScreen.dart';
import 'package:mid_antlantic/screens/profileScreen.dart';
import 'package:mid_antlantic/screens/test_history.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:table_calendar/table_calendar.dart';

import '../constants.dart';
import '../size_config.dart';


class SelectDateHelpers with ChangeNotifier{
  final ConstantColors constantColors = ConstantColors();

  DateTime _dateTime;



  CalendarController _calendarController = CalendarController();


  Widget selectDateAppbar(BuildContext context){
    return AppBar(
      centerTitle: true,
      backgroundColor: constantColors.whiteColor,
      title: Text("Schedule Test Date", style: Constants.boldheading),
      actions: [
        IconButton(
          icon: Icon(Icons.person),
          color: Colors.black,
          onPressed: (){
            Navigator.push(context, PageTransition(child: ProfileScreen(), type: PageTransitionType.rightToLeft));
          }, )
      ],
    );
  }

  Widget selectDateBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TableCalendar(

            calendarController: _calendarController),

        GestureDetector(
          onTap: (){
            Navigator.push(context, PageTransition(child: ConfirmDetails(), type: PageTransitionType.rightToLeft));
          },
          child: Container(
            height: 7.90 * SizeConfig.heightMultiplier,
            margin:
            EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 1 * SizeConfig.widthMultiplier),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }


  Widget selectDateBottomNavBar(BuildContext context){


    return BottomNavigationBar(
        type : BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedLabelStyle: TextStyle( fontSize: 16, color: Colors.black),
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black) ,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestListScreen()));
                  },
                  child: Image.asset("assets/images/testblack.png", height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Test"
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FindLocation()));
                },
                child: Image.asset("assets/images/locationblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
            label: "Location",

          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestHistory()));
                  },
                  child: Image.asset("assets/images/orderblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Order"
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){},
                  child: Image.asset("assets/images/profileblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Profile"
          ),
        ]
    );


  }

}