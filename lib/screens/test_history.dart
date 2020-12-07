import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import '../size_config.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';


class TestHistory extends StatefulWidget {
  @override
  _TestHistoryState createState() => _TestHistoryState();
}

class _TestHistoryState extends State<TestHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: false,
        appBar: MyAppBar(title: Text("Test History",style: TextStyle(color: Colors.black)), appBar: AppBar(),),
        drawer: CustomDrawer(),

        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [



                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(

                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Order Information", style: TextStyle(color: Colors.black, fontSize: 2.790178 * SizeConfig.textMultiplier), textAlign: TextAlign.start, ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(

                              children: [
                                GestureDetector(
                                  onTap:(){
                                    setState(() {
                                      Icon(Icons.remove_red_eye_outlined, size: 50, color: Colors.blue, );
                                    });
                                  },
                                    child: Icon(Icons.remove_red_eye, size: 5.580357 * SizeConfig.heightMultiplier, )
                                ),
                                //Image.asset("assets/images/eyeblack.png"),
                                SizedBox(height: 10,),
                                GestureDetector(
                                    onTap: (){
                                      Icon(Icons.print, size: 5.580357 * SizeConfig.heightMultiplier, color: Colors.blue,);
                                    },
                                    child: Icon(Icons.print, size: 5.580357 * SizeConfig.heightMultiplier,)),
                                //Image.asset("assets/images/printblack.png"),
                                SizedBox(height: 10,),
                                GestureDetector(
                                    onTap: (){
                                      Icon(Icons.mail_outline_outlined, size: 5.580357 * SizeConfig.heightMultiplier, color: Colors.blue,);
                                    },
                                    child: Icon(Icons.mail_outline_outlined, size: 5.580357 * SizeConfig.heightMultiplier, )),
                                //Image.asset("assets/images/mailblack.png"),
                                SizedBox(height: 10,),
                                GestureDetector(
                                    onTap: (){
                                      Icon(Icons.picture_as_pdf_rounded, size: 5.580357 * SizeConfig.heightMultiplier,color: Colors.blue, );
                                    },
                                    child: Icon(Icons.picture_as_pdf_rounded, size: 5.580357 * SizeConfig.heightMultiplier, )),
                                //Image.asset("assets/images/pdfblack.png"),
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: 7.24637 * SizeConfig.widthMultiplier, right: 7.24637 * SizeConfig.widthMultiplier),
                            child: Divider(color: Colors.black, thickness: 1.5,),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("View", style: TextStyle(fontSize: 2.232142 * SizeConfig.textMultiplier, color: Colors.black),),
                                SizedBox(height: 3.348214285714286 * SizeConfig.heightMultiplier,),
                                Text("First Name: ", style: TextStyle(color: Colors.black),),
                                Text("Last Name: ", style: TextStyle(color: Colors.black),),
                                Text("MRO Results: ", style: TextStyle(color: Colors.black),),
                                Text("CCF/Test Number: ", style: TextStyle(color: Colors.black),),
                                Text("Report Date: ", style: TextStyle(color: Colors.black),),
                              ],
                            ),
                          )


                        ],
                      ),
                    ),
                  ),
                ),





              ],
            ),
          ),
        ),

        //bottomNavigationBar:MyBottomNavBar("assets/images/test.png", "assets/images/location.png", "assets/images/order.png" ,"assets/images/Profile.png" )
        bottomNavigationBar:MyBottomNavBar("assets/images/testblack.png", "assets/images/locationblack.png", "assets/images/orderblack.png", "assets/images/profileblack.png")



    );
  }
}
