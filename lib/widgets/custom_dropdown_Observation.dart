
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class DropDownObservation extends StatefulWidget {




  @override
  _DropDownObservationState createState() => _DropDownObservationState();
}

class _DropDownObservationState extends State<DropDownObservation> {

  List _myItems = [
    "YES", "NO",
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
          padding: const EdgeInsets.only(left:30.0, right: 10),
          child: DropdownButton(
            isExpanded: true,
            iconSize: 30,
              hint: Text("Observation",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
              dropdownColor: Colors.white,
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



