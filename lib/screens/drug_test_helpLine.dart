import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class DrugTestHelpLine extends StatefulWidget {
  @override
  _DrugTestHelpLineState createState() => _DrugTestHelpLineState();
}

class _DrugTestHelpLineState extends State<DrugTestHelpLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        extendBodyBehindAppBar: false,
        appBar: MyAppBar(title: Text("Drug Addiction Helpline",style: TextStyle(color: Colors.black)), appBar: AppBar(),),
        drawer: CustomDrawer(),

        body:Container(
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         colors: [
          //
          //           Color(0XFF3D9798),
          //           Color(0XFF2E7FC0)],
          //
          //         begin: Alignment(0,0),
          //         end: Alignment(0,1)
          //     )
          // ),
          child: Container(
            child: SafeArea(
              child: Column(
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

                  Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: ListView(
                      children: [
                        ListTile(
                          title: Text("SAMHSA’s National Helpline", textAlign: TextAlign.center , style: TextStyle(color: Colors.black),),
                          subtitle: GestureDetector(
                            onTap:() async {
                              const phone= 'tel: 1-800-662-4357';
                              if (await canLaunch(phone)) {
                                await launch(phone);
                              } else {
                                throw 'Could not launch $phone';
                              }
                            },
                              child: Text("1-800-662-HELP (4357)", style: TextStyle(color: Colors.red), textAlign: TextAlign.center ,)
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Divider(color: Colors.black, thickness: 1,),
                        ),
                        ListTile(
                          title: Text("Visit Website", textAlign: TextAlign.center , style: TextStyle(color:Colors.black),),
                          subtitle: GestureDetector(
                            onTap: () async {
                              const url = 'https://www.samhsa.gov/find-help/national-helpline';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                              child: Text("https://www.samhsa.gov/find-help/national-helpline",  style: TextStyle(color: Colors.red), textAlign: TextAlign.center ,)
                          ),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        )



    );
  }
}
