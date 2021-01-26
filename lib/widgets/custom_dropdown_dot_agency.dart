
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:mid_antlantic/utils/api.dart';

class DropDownDotAgency extends StatefulWidget {




  @override
  _DropDownDotAgencyState createState() => _DropDownDotAgencyState();
}

class _DropDownDotAgencyState extends State<DropDownDotAgency> {

  var mainUrl = Api.authUrl;

  // List _myItems = [
  //   "FAA", "FMCSA", "FRA", "FTA","HHS", "NRC", "PHMSA", "USCG"
  // ];

  List dataList = List();

  String _itemVal;
  Map data;



  Future getAgency() async{
    http.Response response = await http.get("$mainUrl/apis/get-agencies-list");
    data = json.decode(response.body);
    setState(() {
      dataList = data["data"];
    });

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAgency();
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
          padding: const EdgeInsets.only(left: 30,right: 10),
          child: DropdownButton(
            isExpanded: true,
            iconSize: 30,
            hint: Text("Dot Agency",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
            focusColor: Colors.white,
            dropdownColor:  Colors.white,
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



