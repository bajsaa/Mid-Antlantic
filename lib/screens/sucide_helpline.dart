import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/profileScreen.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';
import 'package:mid_antlantic/utils/api.dart';



class SucideHelpLine extends StatefulWidget {
  @override
  _SucideHelpLineState createState() => _SucideHelpLineState();
}

class _SucideHelpLineState extends State<SucideHelpLine> {
  final ConstantColors constantColors = ConstantColors();
  var mainUrl = Api.authUrl;



  Map suicideHelpData;
  List suicideHelpListData;


  Future getSuicideHelpLine() async{
    http.Response res =await  http.get("$mainUrl/apis/get-suicide-helpline");
    suicideHelpData = json.decode(res.body);
    setState(() {
      suicideHelpListData = suicideHelpData["data"];
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSuicideHelpLine();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: constantColors.whiteColor,
        title: Text("Suicide Helpline", style: Constants.regularHeading),
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
          child:suicideHelpListData == null ? Center(child: CircularProgressIndicator()): Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Container(
                  padding: EdgeInsets.all(90),
                  child: GestureDetector(
                      onTap:() async {
                        const phone= 'tel: 800-273-8255';
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
                        Text(suicideHelpListData[0]["name"], style: TextStyle(color: Colors.black, fontSize: 16),),
                        GestureDetector(
                            onTap:() async {
                              const phone= 'tel: 800-273-8255';
                              if (await canLaunch(phone)) {
                                await launch(phone);
                              } else {
                                throw 'Could not launch $phone';
                              }
                            },
                            child: Text(suicideHelpListData[0]["number"], style: TextStyle(color: Colors.red, fontSize: 16), textAlign: TextAlign.center,  ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(suicideHelpListData[0]["website_text"], style: TextStyle(color: Colors.black,fontSize: 16),),
                          GestureDetector(
                              onTap: () async {
                                const url = 'https://suicidepreventionlifeline.org/';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Text(suicideHelpListData[0]["website_link"],style: TextStyle(color: Colors.red,fontSize: 16), textAlign: TextAlign.center )
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
