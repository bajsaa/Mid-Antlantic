import 'package:mid_antlantic/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class CustomDropDown extends StatefulWidget {



  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {


  List _myItems = [
    "item 1", "item 2"
  ];
  String _itemVal;

  @override
  Widget build(BuildContext context) {


    return Container(
      height: 60.0,
      width: MediaQuery.of(context).size.width * 0.9,


      decoration: BoxDecoration(

          border: Border.all(
              color: Color(0xFFF2F2F2)
          ),
          borderRadius: BorderRadius.circular(50.0)
      ),
      margin: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 10.0
      ),
      child: Center(
        child: DropdownButton(
          hint: Text("Dot Agency"),
          dropdownColor: Color(0xFF84C9FF),
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



