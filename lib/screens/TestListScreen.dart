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







class TestListScreen extends StatefulWidget{









  @override
  _TestListScreenState createState() => _TestListScreenState();
}

class _TestListScreenState extends State<TestListScreen> {

  ConstantColors constantColors = ConstantColors();

  var mainUrl = Api.authUrl;


  Map testData;
  List testListData;
  Future getTestList() async{
    http.Response response = await http.get("$mainUrl/apis/get-test-name-list");
    testData = json.decode(response.body);
    setState(() {
      testListData = testData["data"];
    });

  }

  postTestDescription() async {
    var res= await http.post(
        "http://testlink.techlancesolution.com/jay-safera/apis/get-test-description",
        body: jsonEncode({"test_id":"1"})
    );
  print(res.body);

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTestList();
   postTestDescription();
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

      body:testListData == null ? Center(child: CircularProgressIndicator()):ListView.builder(

          shrinkWrap: true,
          itemCount: testListData == null ? 0 : testListData.length,
          itemBuilder: (context,index){
            return  ListTile (

              title: Text(
                  testListData[index]["name"], style: Constants.regularHeading),
              subtitle: GestureDetector(
                onTap: () {

                  testListData[index]["id"] == "11" ? Navigator
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
                    child: Text("\$${testListData[index]["price"]}",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              trailing: GestureDetector(
                  onTap: () {
                    //postTestDescription();
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,
                        child: AlertDialog(
                          scrollable: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          title: Text(testListData[index]["name"],style: Constants.boldheading,
                            textAlign: TextAlign.center,),
                          content: Column(
                            children: [
                                  FutureBuilder(
                                    future: postTestDescription(),
                                    builder: (context,snapshot){
                                      return ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: snapshot.data.length,
                                          itemBuilder: (context, index){
                                           // print(snapshot.data.length);
                                           //  print(snapshot.data[index]["name"]);
                                            return ListTile(
                                              title: Text(snapshot.data[index]["name"], style: Constants.regularDarkText,),
                                              trailing: Text(snapshot.data[index]["value"],style: Constants.regularDarkText),
                                            );

                                          });},
                                  )
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
