
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:mid_antlantic/utils/api.dart';


class DropDownReason extends StatefulWidget {




  @override
  _DropDownReasonState createState() => _DropDownReasonState();
}

class _DropDownReasonState extends State<DropDownReason> {

  // List _myItems = [
  //   "FOLLOW-UP", "OTHER", "POST-ACCIDENT", "PRE-EMPLOYMENT","RANDOM", "REASONABLE SUSPICION", "RETURN TO DUTY"
  // ];

  String _itemVal;
  List dataList = List();
  var mainUrl = Api.authUrl;
  Map data;

  Future getReason() async{
    http.Response response = await http.get("$mainUrl/apis/get-dot-reason-list");
    data = json.decode(response.body);
    setState(() {
      dataList = data["data"];
    });

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getReason();
  }


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
              items: dataList
                  .map((item) {
                return DropdownMenuItem(
                    value: item['id'].toString(),
                    child: Text(item["name"],style: TextStyle(fontSize: 16),)
                );
              }
              ).toList()
          ),
        ),
      ),
    );

  }
}



