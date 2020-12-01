

import 'package:flutter/cupertino.dart';
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
        appBar: MyAppBar(title: Text("Find Location",style: TextStyle(color: Colors.black)), appBar: AppBar(),),
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
                    padding: EdgeInsets.all(3.3482 * SizeConfig.heightMultiplier),
                    width: double.infinity,
                    height: 16.7410 * SizeConfig.heightMultiplier,

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
                              fillColor: Colors.white,
                              hintStyle: TextStyle(color: Colors.black),
                              contentPadding: EdgeInsets.all(16),
                              ),
                            style: TextStyle(color: Colors.black),
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
