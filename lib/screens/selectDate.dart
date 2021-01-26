import 'package:flutter/cupertino.dart';



import 'package:flutter/material.dart';



class ScheduleTestDate extends StatefulWidget {
  @override
  _ScheduleTestDateState createState() => _ScheduleTestDateState();
}

class _ScheduleTestDateState extends State<ScheduleTestDate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      //appBar: Provider.of<SelectDateHelpers>(context,listen: false).selectDateAppbar(context),
      //body: Provider.of<SelectDateHelpers>(context,listen: false).selectDatePicker(context),
     // bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}


