

import 'package:mid_antlantic/size_config.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:mid_antlantic/widgets/find_location_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class FindLocation extends StatefulWidget {
  @override
  _FindLocationState createState() => _FindLocationState();
}

class _FindLocationState extends State<FindLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    //30
                    margin: EdgeInsets.only(left: 7.246 * SizeConfig.widthMultiplier , right: 7.246 * SizeConfig.widthMultiplier),
                    //10
                    padding: EdgeInsets.only(top: 1.1160 * SizeConfig.heightMultiplier, left: 1.1160 * SizeConfig.widthMultiplier, right: 1.1160 * SizeConfig.widthMultiplier, bottom: 1.1160 * SizeConfig.heightMultiplier),
                    child: Row(

                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: ResponsiveBuilder(
                              builder: (context, sizingInformation)=>Icon(
                                Icons.keyboard_arrow_left_sharp,
                                color: Colors.white,
                                size: 7.2463 * SizeConfig.imageSizeMultiplier,),)

                        ),

                        //20
                        SizedBox(width: 4.8309 * SizeConfig.widthMultiplier),
                        ResponsiveBuilder(builder: (context, sizingInformation)=>Text("Find Location", style: Constants.boldheading,),)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(3.3482 * SizeConfig.heightMultiplier),
                    width: double.infinity,
                    height: 16.7410 * SizeConfig.heightMultiplier,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(1.674 * SizeConfig.heightMultiplier),
                          width: 67.6328 * SizeConfig.widthMultiplier,
                          height: 13.3928 * SizeConfig.heightMultiplier,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Enter Zip Code",
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                              hoverColor: Colors.blueAccent
                              )
                            ),
                          ),
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 5.580 * SizeConfig.heightMultiplier,
                          width: 12.0772 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                            color: Color(0XFF2E7FC0),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: GestureDetector(
                            onTap: (){},
                              child: Icon(Icons.search)
                          ),
                        )
                      ],
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
                          trailing: FindLocationBtn(context)

                        ),
                        ListTile(
                          title: Text("Lab Name", style: Constants.boldheading),
                          subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText,),
                          trailing: FindLocationBtn(context)
                        ),
                        ListTile(
                          title: Text("Lab Name", style: Constants.boldheading),
                          subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                          trailing:FindLocationBtn(context)
                        ),
                        ListTile(
                          title: Text("Lab Name", style: Constants.boldheading),
                          subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                          trailing: FindLocationBtn(context)
                        ),
                        ListTile(
                          title: Text("Lab Name", style: Constants.boldheading),
                          subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                          trailing: FindLocationBtn(context)
                        ),
                        ListTile(
                          title: Text("Lab Name", style: Constants.boldheading),
                          subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                          trailing: FindLocationBtn(context)
                        ),
                        ListTile(
                          title: Text("Lab Name", style: Constants.boldheading),
                          subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                          trailing: FindLocationBtn(context)
                        ),
                        ListTile(
                          title: Text("Lab Name", style: Constants.boldheading),
                          subtitle: Text("dbgfkdabvfadf", style: Constants.regularDarkText),
                          trailing: FindLocationBtn(context)
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
