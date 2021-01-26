import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:mid_antlantic/screens/profileScreen.dart';
import 'package:mid_antlantic/utils/api.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';
import '../size_config.dart';
import 'dotForm.dart';
import 'notDotForm.dart';







class TestListScreen extends StatefulWidget {

  @override
  _TestListScreenState createState() => _TestListScreenState();
}

class _TestListScreenState extends State<TestListScreen> {

  ConstantColors constantColors = ConstantColors();

  var mainUrl = Api.authUrl;


  Map data;
  List userData;


  Future getData() async{
    http.Response response = await http.get("$mainUrl/apis/get-test-name-list");
    data = json.decode(response.body);
    setState(() {
       userData = data["data"];
    });

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,

      appBar:AppBar(
        centerTitle: true,
        backgroundColor: constantColors.whiteColor,
        title: Text("Select Test", style:Constants.boldheading),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.black,
            onPressed: (){
              Navigator.push(context, PageTransition(child: ProfileScreen(), type: PageTransitionType.rightToLeft));
            }, )
        ],
      ),

      drawer:CustomDrawer() ,

      body:userData == null ? Center(child: CircularProgressIndicator()) : ListView.builder(

        shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: userData == null ? 0 : userData.length,
          itemBuilder: (context,index){
            return userData == null ? Center(child: CircularProgressIndicator()) :  ListTile (

              title: Text(
                  userData[index]["name"], style: Constants.regularHeading),
              subtitle: GestureDetector(
                onTap: () {

                  userData[index]["id"] == "2" ? Navigator
                      .of(context)
                      .push(PageTransition(child: DotFormScreen(),
                      type:PageTransitionType.rightToLeftWithFade)):


                  Navigator
                      .of(context)
                      .push(PageTransition(child: NonDotFormScreen(),
                      type:PageTransitionType.rightToLeftWithFade));
                },
                child: Container(
                  height: 3.90625 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.613839 * SizeConfig.heightMultiplier),
                    child: Text("\$${userData[index]["price"]}",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              trailing: GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,
                        child: AlertDialog(
                          scrollable: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          title: Text(userData[index]["name"],style: Constants.boldheading,
                            textAlign: TextAlign.center,),
                          content: Column(
                            children: [
                              ListTile(
                                title: Text("AMPHETAMINES", style: Constants.regularDarkText,),
                                trailing: Text("100 ng/mL",style: Constants.regularDarkText),
                              ),
                              ListTile(
                                title: Text("Amphetamine", style: Constants.regularDarkText,),
                                trailing: Text("500 ng/mL", style: Constants.regularDarkText,),
                              ),
                              ListTile(
                                title: Text("Methamphetamine", style: Constants.regularDarkText,),
                                trailing: Text("500 ng/mL", style: Constants.regularDarkText,),
                              ),
                              ListTile(
                                title: Text("METHAMPHETAMINE", style: Constants.regularDarkText,),
                                trailing: Text("500 ng/mL", style: Constants.regularDarkText,),
                              ),
                              ListTile(
                                title: Text("COCAINE METABOLITES", style: Constants.regularDarkText,),
                                trailing: Text("150 ng/mL", style: Constants.regularDarkText,),
                              ),
                              ListTile(
                                title: Text("MARIJUANA METABOLITES", style: Constants.regularDarkText,),
                                trailing: Text("15ng/mL", style: Constants.regularDarkText,),
                              ),
                              ListTile(
                                title: Text("OPIATES", style: Constants.regularDarkText,),
                                trailing: Text("2000 ng/mL", style: Constants.regularDarkText,),
                              ),

                              ListTile(
                                title: Text("CODEINE", style: Constants.regularDarkText,),
                                trailing: Text("2000 ng/mL", style: Constants.regularDarkText,),
                              ),
                              ListTile(
                                title: Text("MORPHINE", style: Constants.regularDarkText,),
                                trailing: Text("2000 ng/mL", style: Constants.regularDarkText,),
                              ),
                              ListTile(
                                title: Text("6-ACETYLMORPHINE", style: Constants.regularDarkText,),
                                trailing: Text("10 ng/mL", style: Constants.regularDarkText,),
                              ),
                              ListTile(
                                title: Text("PHENCYCLIDINE", style: Constants.regularDarkText,),
                                trailing: Text("25 ng/mL", style: Constants.regularDarkText,),
                              ),
                            ],
                          ),
                          actions: [
                            FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Close",
                                  style: TextStyle(color: Colors.black),))
                          ],
                        ),
                      );
                    }
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Icon(Icons.help, color: Colors.blueAccent,),
                  )
              ),

            );
          }
      )
    );
  }
}
