import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';

import '../images_path.dart';
import '../size_config.dart';
import 'confirm_information.dart';

class ScheduleTestDate extends StatefulWidget {
  @override
  _ScheduleTestDateState createState() => _ScheduleTestDateState();
}

class _ScheduleTestDateState extends State<ScheduleTestDate> {

  int _selectedIndex = 0;
  DateTime _dateTime;



  CalendarController _calendarController = CalendarController();

  @override
  Widget build(BuildContext context) {



    Future<Null> selectDate(BuildContext context) async{
      DateTime _datePicker = await showDatePicker(

          context: context,
          initialDate: _dateTime == null ? DateTime.now() : _dateTime,
          firstDate:DateTime(1947),
          lastDate: DateTime(2030)).then((date) {
            setState(() {
              _dateTime = date;
              print(_dateTime.toString());
            });
            return null;
      });


    }
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
        child: Container(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  //30
                  margin: EdgeInsets.only(left: 7.246 * SizeConfig.widthMultiplier , right: 7.246 * SizeConfig.widthMultiplier),
                  //10
                  padding: EdgeInsets.only(top: 1.1160 * SizeConfig.heightMultiplier, left: 1.1160 * SizeConfig.widthMultiplier, right: 1.0160 * SizeConfig.widthMultiplier, bottom: 1.1160 * SizeConfig.heightMultiplier),
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
                      SizedBox(width: 2.3309 * SizeConfig.widthMultiplier),
                      ResponsiveBuilder(builder: (context, sizingInformation)=>Text("Schedule", style: Constants.boldheading,),)
                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //100
                    SizedBox(height: 11.1607 * SizeConfig.heightMultiplier,),
                    CustomBtn(
                      text: "Select your Date",
                      onPressed: (){
                        setState(() {
                          selectDate(context);
                        });
                      },
                    ),

                    SizedBox(height: 11.1607 * SizeConfig.heightMultiplier,),



                    Container(

                      width: 72.4637 * SizeConfig.widthMultiplier,
                      height:11.1607 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(_dateTime == null ? 'Nothing has been picked yet' : "You selected : ${_dateTime.day.toString()}-${_dateTime.month}-${_dateTime.year}",
                          //20
                          style: TextStyle(fontSize: 2.23214 * SizeConfig.textMultiplier,),
                        textAlign: TextAlign.center,),
                      ),
                    ),

                    SizedBox(height: 11.1607 * SizeConfig.heightMultiplier,),


                   CustomBtn(
                     text: "Proceed",
                     onPressed: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ConfirmDetails()));
                     },
                   )
                  ],
                ),





              ],
            ),
          ),
        ),


      ),
        bottomNavigationBar:MyBottomNavBar(ImagesPath.testIcon, ImagesPath.locationIcon, ImagesPath.orderIcon, ImagesPath.profileIcon)
    );
  }
}
