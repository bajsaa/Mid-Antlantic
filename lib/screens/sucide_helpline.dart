import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class SucideHelpLine extends StatefulWidget {
  @override
  _SucideHelpLineState createState() => _SucideHelpLineState();
}

class _SucideHelpLineState extends State<SucideHelpLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        extendBodyBehindAppBar: false,
        appBar: MyAppBar(),
        drawer: CustomDrawer(),

        body:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [

                    Color(0XFF3D9798),
                    Color(0XFF2E7FC0)],

                  begin: Alignment(0,0),
                  end: Alignment(0,1)
              )
          ),
          child: Container(
            child: SafeArea(
              child: Column(
                children: [
                  Text("Suicide HelpLine", style:  Constants.boldheading,),
                  Container(
                      padding: EdgeInsets.all(90),
                      child: Image.asset("assets/images/helpline.png")
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
                          title: Text("SAMHSA’s National Helpline", textAlign: TextAlign.center , style: TextStyle(color: Colors.blue),),
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
                          title: Text("Visit Website", textAlign: TextAlign.center , style: TextStyle(color: Colors.blue),),
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
        )



    );
  }
}
