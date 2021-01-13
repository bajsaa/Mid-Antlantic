import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/FindLocation.dart';
import 'package:mid_antlantic/screens/TestListScreen.dart';
import 'package:mid_antlantic/screens/selectDate.dart';
import 'package:mid_antlantic/screens/test_history.dart';
import 'package:mid_antlantic/widgets/colors.dart';

import '../constants.dart';
import '../size_config.dart';



class FindLocationHelpers with ChangeNotifier{
  final ConstantColors constantColors = ConstantColors();
  var formKey = GlobalKey<FormState>();
  TextEditingController zipCodeController = TextEditingController();

  Widget findLocationAppbar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: constantColors.whiteColor,
      title: Text("Find Lab", style: Constants.boldheading),
    );
  }

  Widget findLocationBody(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            child: Container(

              padding: EdgeInsets.all(3.3482 * SizeConfig.heightMultiplier),
              width: double.infinity,
              height: 16.7410 * SizeConfig.heightMultiplier,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Form(
                    key: formKey,
                    child: Container(
                      padding: EdgeInsets.all(1.674 * SizeConfig.heightMultiplier),
                      width: 67.6328 * SizeConfig.widthMultiplier,
                      height: 13.3928 * SizeConfig.heightMultiplier,
                      child: TextField(
                        controller:zipCodeController ,
                        decoration: InputDecoration(
                          hintText: "Enter Zip Code",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.black),
                          contentPadding: EdgeInsets.all(16),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 5.580 * SizeConfig.heightMultiplier,
                    width: 12.0772 * SizeConfig.widthMultiplier,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: GestureDetector(
                        onTap: (){},
                        child: Icon(Icons.search, color: Colors.white,)
                    ),
                  )
                ],
              ),

            ),
          ),
          Expanded(
            flex: 5,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ListTile(

                    title: Text("Lab Name", style: Constants.boldheading),
                    subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                      ),
                      child: Text("Select", style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                      },
                    )

                ),
                ListTile(
                    title: Text("Lab Name", style: Constants.boldheading),
                    subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText,),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                      ),
                      child: Text("Select", style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                      },
                    )
                ),
                ListTile(
                    title: Text("Lab Name", style: Constants.boldheading),
                    subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                    trailing:RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                      ),
                      child: Text("Select", style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                      },
                    )
                ),
                ListTile(
                    title: Text("Lab Name", style: Constants.boldheading),
                    subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                      ),
                      child: Text("Select", style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                      onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                      },
                    )
                ),
                ListTile(
                    title: Text("Lab Name", style: Constants.boldheading),
                    subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                      ),
                      child: Text("Select", style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                      },
                    )
                ),
                ListTile(
                    title: Text("Lab Name", style: Constants.boldheading),
                    subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                      ),
                      child: Text("Select", style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                      },
                    )
                ),
                ListTile(
                    title: Text("Lab Name", style: Constants.boldheading),
                    subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                      ),
                      child: Text("Select", style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                      onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                      },
                    )
                ),
                ListTile(
                    title: Text("Lab Name", style: Constants.boldheading),
                    subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                      ),
                      child: Text("Select", style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                      },
                    )
                ),
                ListTile(
                    title: Text("Lab Name1", style: Constants.boldheading),
                    subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                      ),
                      child: Text("Select", style: TextStyle(color: Colors.white),),
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
                      },
                    )
                )
              ],
            ),
          )

        ],
      ),
    );
  }


  Widget findLocationBottomNavBar(BuildContext context){


    return BottomNavigationBar(
        type : BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedLabelStyle: TextStyle( fontSize: 16, color: Colors.black),
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black) ,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestListScreen()));
                  },
                  child: Image.asset("assets/images/testblack.png", height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Test"
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FindLocation()));
                },
                child: Image.asset("assets/images/locationblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
            label: "Location",

          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestHistory()));
                  },
                  child: Image.asset("assets/images/orderblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Order"
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){},
                  child: Image.asset("assets/images/profileblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Profile"
          ),
        ]
    );


  }


}