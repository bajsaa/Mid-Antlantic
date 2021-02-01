import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/profileScreen.dart';
import 'package:mid_antlantic/utils/api.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants.dart';
import 'package:http/http.dart' as http;




class DrugTestHelpLine extends StatefulWidget {
  @override
  _DrugTestHelpLineState createState() => _DrugTestHelpLineState();
}

class _DrugTestHelpLineState extends State<DrugTestHelpLine> {
  
  
  
  var mainUrl = Api.authUrl;
  final ConstantColors constantColors = ConstantColors();



  Map drugHelpData;
  List drugHelpListData;
  
  
  Future getDrugHelpLine() async{
    http.Response res =await  http.get("$mainUrl/apis/get-drug-helpline");
    drugHelpData = json.decode(res.body);
    setState(() {
      drugHelpListData = drugHelpData["data"];
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDrugHelpLine();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: constantColors.whiteColor,
        title: Text("Drug Addiction Helpline", style: Constants.regularHeading),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.black,
            onPressed: (){
              Navigator.push(context, PageTransition(child: ProfileScreen(), type: PageTransitionType.rightToLeft));
            }, )
        ],

      ),

      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child:drugHelpListData  == null ? Center(child: CircularProgressIndicator()): Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Container(
                  padding: EdgeInsets.all(90),
                  child: GestureDetector(
                      onTap:() async {
                        const phone= 'tel: 1-800-662-4357';
                        if (await canLaunch(phone)) {
                          await launch(phone);
                        } else {
                          throw 'Could not launch $phone';
                        }
                      },
                      child: Image.asset("assets/images/call.png"))
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(drugHelpListData[0]["name"], style: TextStyle(color: Colors.black, fontSize: 16),),
                        GestureDetector(
                            onTap:() async {
                              const phone= 'tel: 1-800-662-4357';
                              if (await canLaunch(phone)) {
                                await launch(phone);
                              } else {
                                throw 'Could not launch $phone';
                              }
                            },
                            child: Text(drugHelpListData[0]["number"], style: TextStyle(color: Colors.red, fontSize: 16), textAlign: TextAlign.center,  ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(drugHelpListData[0]["website_text"], style: TextStyle(color: Colors.black,fontSize: 16),),
                          GestureDetector(
                              onTap: () async {
                                const url = 'https://www.samhsa.gov/find-help/national-helpline';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Text(drugHelpListData[0]["website_link"],style: TextStyle(color: Colors.red,fontSize: 16), textAlign: TextAlign.center )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ) ,
    );
  }
}
