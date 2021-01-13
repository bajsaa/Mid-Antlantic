import 'package:flutter/cupertino.dart';
import 'package:mid_antlantic/helpers/selectDateHelpers.dart';


import 'package:flutter/material.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';
import 'package:provider/provider.dart';


class ScheduleTestDate extends StatefulWidget {
  @override
  _ScheduleTestDateState createState() => _ScheduleTestDateState();
}

class _ScheduleTestDateState extends State<ScheduleTestDate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: Provider.of<SelectDateHelpers>(context,listen: false).selectDateAppbar(),
      body: Provider.of<SelectDateHelpers>(context,listen: false).selectDateBody(context),
      bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}


