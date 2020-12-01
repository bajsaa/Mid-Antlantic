import 'package:mid_antlantic/screens/schedule_test_date.dart';
import 'package:flutter/material.dart';


class FindLocationBtn extends RaisedButton {

  FindLocationBtn(BuildContext context)
      :super(
    onPressed: () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => ScheduleTestDate()));
    },
    child: Text("Find Location", style: TextStyle(color: Colors.white),),
    color: Colors.black,
  );
}
