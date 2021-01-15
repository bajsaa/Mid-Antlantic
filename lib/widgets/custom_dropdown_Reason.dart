import 'package:mid_antlantic/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class DropDownReason extends StatefulWidget {




  @override
  _DropDownReasonState createState() => _DropDownReasonState();
}

class _DropDownReasonState extends State<DropDownReason> {

  List _myItems = [
    "FOLLOW-UP", "OTHER", "POST-ACCIDENT", "PRE-EMPLOYMENT","RANDOM", "REASONABLE SUSPICION", "RETURN TO DUTY"
  ];

  String _itemVal;

  @override
  Widget build(BuildContext context) {


    return Container(
      height: 60.0,
      width: MediaQuery.of(context).size.width * 0.9,


      decoration: BoxDecoration(

          border: Border.all(
              color: Colors.black
          ),
          borderRadius: BorderRadius.circular(50.0)
      ),
      margin: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 10.0
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0,right: 10),
          child: DropdownButton(
              isExpanded: true,
              hint: Text("Reason",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
              dropdownColor:  Colors.white,
              iconSize: 30,
              style: TextStyle(color: Colors.black),
              value: _itemVal,
              onChanged: (value){
                setState(() {
                  _itemVal = value;
                });
              },
              items: _myItems
                  .map((value) {
                return DropdownMenuItem(
                    value: value,
                    child: Text(value,style: TextStyle(fontSize: 16),)
                );
              }
              ).toList()
          ),
        ),
      ),
    );

  }
}



