import 'package:mid_antlantic/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class DropDownReasonNonDot extends StatefulWidget {




  @override
  _DropDownReasonNonDotState createState() => _DropDownReasonNonDotState();
}

class _DropDownReasonNonDotState extends State<DropDownReasonNonDot> {

  List _myItems = [
    "ANNUAL", "AUDIOGRAM", "POST-ACCIDENT", "PRE-EMPLOYMENT","RANDOM", "REASONABLE SUSPICION", "RETURN TO DUTY", "BLIND SAMPLE", "COURT ORDERED", "FITNESS FOR DUTY", "FOLLOW UP", "JOB TRANSFER", "PERIODIC", "PERIODIC MEDICAL","POST RANDOM", "POST-ACCIDENT", "PRE-EMPLOYMENT", "PRE-SITE ACCESS", "PROMOTION", "RE-CERTFICATION", "SWEEP", "RETURN TO DUTY"
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
        child: DropdownButton(
            hint: Text("Reason",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
            dropdownColor:  Colors.white,
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
    );

  }
}



