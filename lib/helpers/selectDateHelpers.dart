import 'package:flutter/material.dart';

import 'package:mid_antlantic/screens/confirmDetailScreen.dart';


import '../screens/confirmDetailScreen.dart';




class SelectDateHelpers  with ChangeNotifier{

  DateTime currentDate = new DateTime.now();


  Future<Null> selectDateMethod(BuildContext context) async{

    //String formattedDate = new DateFormat.yMMMd().format(currentDate);

    final DateTime selectDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2030),

        confirmText: "Submit ",
        routeSettings: RouteSettings(arguments: Navigator.push(context, MaterialPageRoute(builder: (_)=>ConfirmDetails())))
    );

    if(selectDate !=null){

        currentDate = selectDate;


    }



  }










}