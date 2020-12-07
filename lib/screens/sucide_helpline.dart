import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../size_config.dart';


class SucideHelpLine extends StatefulWidget {
  @override
  _SucideHelpLineState createState() => _SucideHelpLineState();
}

class _SucideHelpLineState extends State<SucideHelpLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        extendBodyBehindAppBar: false,
        appBar: MyAppBar(title: Text("Suicide HelpLine",style: TextStyle(color: Colors.black)), appBar: AppBar(),),
        drawer: CustomDrawer(),

        body:Column(
          children: [
            Container(
              child: SafeArea(
                child: Column(
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

                    Container(
                      height: 22.32142 * SizeConfig.heightMultiplier,
                      width:84.541062 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: ListView(
                        children: [
                          ListTile(
                            title: Text("SAMHSA’s National Helpline", textAlign: TextAlign.center , style: TextStyle(color: Colors.black),),
                            subtitle: GestureDetector(
                                onTap:() async {
                                  const phone= 'tel: 800-273-8255';
                                  if (await canLaunch(phone)) {
                                    await launch(phone);
                                  } else {
                                    throw 'Could not launch $phone';
                                  }
                                },
                                child: Text("800-273-8255", style: TextStyle(color: Colors.red), textAlign: TextAlign.center ,)
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Divider(color: Colors.black, thickness: 1,),
                          ),
                          ListTile(
                            title: Text("Visit Website", textAlign: TextAlign.center , style: TextStyle(color: Colors.black),),
                            subtitle: GestureDetector(
                                onTap: () async {
                                  const url = 'https://suicidepreventionlifeline.org/';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: Text("https://suicidepreventionlifeline.org/",  style: TextStyle(color: Colors.red), textAlign: TextAlign.center ,)
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),

        //bottomNavigationBar:MyBottomNavBar("assets/images/test.png", "assets/images/location.png", "assets/images/order.png" ,"assets/images/Profile.png" )
        bottomNavigationBar:MyBottomNavBar("assets/images/testblack.png", "assets/images/locationblack.png", "assets/images/orderblack.png" ,"assets/images/profileblack.png" )



    );
  }
}
