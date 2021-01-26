import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../constants.dart';
import '../size_config.dart';
import 'dotForm.dart';
import 'notDotForm.dart';

class PRAC extends StatefulWidget {
  @override
  _PRACState createState() => _PRACState();
}

class _PRACState extends State<PRAC> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

//TODO: Test Category name => URINE TEST
// ListTile(
//   title: Text("URINE TEST", style: ConstantText.regularHeading,),
// ),
//TODO: 5 PANEL
        ListTile (

          title: Text(
              "5 Panel - Most Commonly selected", style: Constants.regularHeading),
          subtitle: GestureDetector(
            onTap: () {

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
                child: Text("\$60.0",
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
                      title: Text("5 Panel",style: Constants.boldheading,
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

        ),

//TODO: DOT PANEL
        ListTile(

          title: Text(
            "DOT Test - Agencies FAA, FMCSA, FRA FTA PHMSA, USCG", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {

              Navigator.of(context).push(PageTransition(child: DotFormScreen(), type:PageTransitionType.rightToLeftWithFade));
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
                child: Text("\$75.0",
                  style: TextStyle(color: Colors.white,fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          trailing:  GestureDetector(
              onTap: () {
// showDialog(context: context, builder: (context) {
//   return Container(
//     height: MediaQuery.of(context).size.height * 0.8,
//     width: MediaQuery.of(context).size.width,
//     child: AlertDialog(
//       scrollable: true,
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(50)
//       ),
//       title: Text("DOT Drug Panel",
//         textAlign: TextAlign.center,style: Constants.boldheading,),
//       content: Column(
//         children: [
//           ListTile(
//             title: Text("AMPHETAMINES",style: Constants.regularDarkText,),
//             trailing: Text("100 ng/mL",style: Constants.regularDarkText,),
//           ),
//           ListTile(
//             title: Text("Amphetamine",style: Constants.regularDarkText,),
//             trailing: Text("500 ng/mL",style: Constants.regularDarkText,),
//           ),
//           ListTile(
//             title: Text("Methamphetamine",style: Constants.regularDarkText,),
//             trailing: Text("500 ng/mL",style: Constants.regularDarkText,),
//           ),
//           ListTile(
//             title: Text("METHAMPHETAMINE",style: Constants.regularDarkText,),
//             trailing: Text("500 ng/mL",style: Constants.regularDarkText,),
//           ),
//           ListTile(
//             title: Text("COCAINE METABOLITES",style: Constants.regularDarkText,),
//             trailing: Text("150 ng/mL",style: Constants.regularDarkText,),
//           ),
//           ListTile(
//             title: Text("MARIJUANA METABOLITES",style: Constants.regularDarkText,),
//             trailing: Text("15ng/mL",style: Constants.regularDarkText,),
//           ),
//           ListTile(
//             title: Text("OPIATES",style: Constants.regularDarkText,),
//             trailing: Text("2000 ng/mL",style: Constants.regularDarkText,),
//           ),
//
//           ListTile(
//             title: Text("CODEINE",style: Constants.regularDarkText,),
//             trailing: Text("2000 ng/mL",style: Constants.regularDarkText,),
//           ),
//           ListTile(
//             title: Text("MORPHINE",style: Constants.regularDarkText,),
//             trailing: Text("2000 ng/mL",style: Constants.regularDarkText,),
//           ),
//           ListTile(
//             title: Text("6-ACETYLMORPHINE",style: Constants.regularDarkText,),
//             trailing: Text("10 ng/mL",style: Constants.regularDarkText,),
//           ),
//           ListTile(
//             title: Text("PHENCYCLIDINE",style: Constants.regularDarkText,),
//             trailing: Text("25 ng/mL",style: Constants.regularDarkText,),
//           ),
//         ],
//       ),
//       actions: [
//         FlatButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text("Close",
//               style: TextStyle(color: Colors.black),))
//       ],
//     ),
//   );
// }
// );
              },
              child: Padding(
                padding: const EdgeInsets.only(top:25.0),
                child: Icon(Icons.help, color: Colors.blueAccent,),
              )
          ),
        ),

//TODO: 7 PANEL
        ListTile(

          title: Text(
            "7 Panel", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {

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
                child: Text("\$65.0",
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
                      title: Text("7 Panel",
                        textAlign: TextAlign.center,style: Constants.boldheading,),
                      content: Column(
                        children: [
                          ListTile(
                            title: Text("AMPHETAMINES",style: Constants.regularDarkText,),
                            trailing: Text("1000 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Amphetamine",style: Constants.regularDarkText,),
                            trailing: Text("500 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Methamphetamine",style: Constants.regularDarkText,),
                            trailing: Text("500 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("BARBITURATES",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("AMOBARBITAL",style: Constants.regularDarkText,),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("BUTALBITAL",style: Constants.regularDarkText,),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText,),
                          ),

                          ListTile(
                            title: Text("PENTOBARBITAL",style: Constants.regularDarkText,),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("PHENOBARBITAL",style: Constants.regularDarkText,),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("SECOBARBITAL",style: Constants.regularDarkText,),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("COCAINE METABOLITES",style: Constants.regularDarkText,),
                            trailing: Text("150 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MARIJUANA METABOLITES",style: Constants.regularDarkText,),
                            trailing: Text("15 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("METHADONE",style: Constants.regularDarkText,),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("OPIATES",style: Constants.regularDarkText,),
                            trailing: Text("2000 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MORPHINE"),
                            trailing: Text("2000 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("CODEINE",style: Constants.regularDarkText,),
                            trailing: Text("2000 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("6-ACETYLMORPHINE",style: Constants.regularDarkText,),
                            trailing: Text("10 ng/mL"),
                          ),
                          ListTile(
                            title: Text("PHENCYCLIDINE",style: Constants.regularDarkText,),
                            trailing: Text("25 ng/mL",style: Constants.regularDarkText,),
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
              child:Padding(
                padding: const EdgeInsets.only(top:25.0),
                child: Icon(Icons.help, color: Colors.blueAccent,),
              )
          ),
        ),

//TODO: 9 PANEL
        ListTile(

          title: Text(
            "9 Panel", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {

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
                child: Text("\$70.0",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          trailing:  GestureDetector(
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
                      title: Text("9 PANEL",style: Constants.boldheading,
                        textAlign: TextAlign.center,),
                      content: Column(
                        children: [
                          ListTile(
                            title: Text("AMPHETAMINES",style: Constants.regularDarkText),
                            trailing: Text("1000 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Amphetamine",style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Methamphetamine",style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("BARBITURATES",style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Amobarbital",style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Butalbital",style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText),
                          ),

                          ListTile(
                            title: Text("Pentobarbital",style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Phenobarbital",style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Secobarbital",style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("BENZODIAZEPINES",style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Alprazolam Metabolite",style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxazepam",style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("COCAINE METABOLITES",style: Constants.regularDarkText),
                            trailing: Text("150 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MARIJUANA METABOLITES",style: Constants.regularDarkText),
                            trailing: Text("15 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("METHADONE",style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("OPIATES",style: Constants.regularDarkText),
                            trailing: Text("2000 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Morphine",style: Constants.regularDarkText),
                            trailing: Text("2000 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Codeine",style: Constants.regularDarkText),
                            trailing: Text("2000 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("6-ACETYLMORPHINE",style: Constants.regularDarkText),
                            trailing: Text("10 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("PHENCYCLIDINE",style: Constants.regularDarkText),
                            trailing: Text("25 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("PROPOXYPHENE",style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL",style: Constants.regularDarkText),
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
        ),


//TODO: 10 PANEL
        ListTile(

          title: Text(
            "10 Panel", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {

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
                child: Text("\$80.0",
                  style: TextStyle(color: Colors.white,fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          trailing:  GestureDetector(
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
                      title: Text("10 PANEL", style: Constants.boldheading,
                        textAlign: TextAlign.center,),
                      content: Column(
                        children: [
                          ListTile(
                            title: Text("AMPHETAMINES", style: Constants.regularDarkText),
                            trailing: Text("1000 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Amphetamine", style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Methamphetamine", style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("BARBITURATES", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Amobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Butalbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),

                          ListTile(
                            title: Text("Pentobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Phenobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Secobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("BENZODIAZEPINES", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Alprazolam Metabolite", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxazepam", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("COCAINE METABOLITES", style: Constants.regularDarkText),
                            trailing: Text("150 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MARIJUANA METABOLITES", style: Constants.regularDarkText),
                            trailing: Text("15 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("METHADONE", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("OPIATES", style: Constants.regularDarkText),
                            trailing: Text("2000 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Morphine", style: Constants.regularDarkText),
                            trailing: Text("2000 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Codeine", style: Constants.regularDarkText),
                            trailing: Text("2000 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("6-ACETYLMORPHINE", style: Constants.regularDarkText),
                            trailing: Text("10 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("PHENCYCLIDINE", style: Constants.regularDarkText),
                            trailing: Text("25 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("PROPOXYPHENE", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
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
        ),

//TODO: 5 PANEL +
        ListTile(

          title: Text(
            "5 Panel+ Exp Opiates Oxy, MDMA", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {
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
                child: Text("\$80.0",
                  style: TextStyle(color: Colors.white,fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          trailing:  GestureDetector(
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
                      title: Text("5 Panel + exp Opiates, Oxy, MDMA ",style: Constants.boldheading,
                        textAlign: TextAlign.center,),
                      content: Column(
                        children: [
                          ListTile(
                            title: Text("AMPHETAMINES",style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Amphetamine",style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Methamphetamine",style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("METHAMPHETAMINE",style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("COCAINE METABOLITES",style: Constants.regularDarkText),
                            trailing: Text("150 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MARIJUANA METABOLITES",style: Constants.regularDarkText),
                            trailing: Text("15ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDA-ANALOGUES",style: Constants.regularDarkText),
                            trailing: Text("500g/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDA",style: Constants.regularDarkText),
                            trailing: Text("250g/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDMA",style: Constants.regularDarkText),
                            trailing: Text("250g/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDEA",style: Constants.regularDarkText),
                            trailing: Text("250g/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("OPIATES",style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText),
                          ),

                          ListTile(
                            title: Text("Codeine",style: Constants.regularDarkText),
                            trailing: Text("150 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Morphine",style: Constants.regularDarkText),
                            trailing: Text("150 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Hydromorphone",style: Constants.regularDarkText),
                            trailing: Text("150 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Hydrocodone",style: Constants.regularDarkText),
                            trailing: Text("2000 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("OXYCODONES",style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxymorphone",style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxycodone",style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("PHENCYCLIDINE",style: Constants.regularDarkText),
                            trailing: Text("25 ng/mL",style: Constants.regularDarkText),
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
        ),

//TODO: 7 PANEL +
        ListTile(

          title: Text(
            "7 Panel+ Exp Opiates, Oxy, MDMA", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {

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
                child: Text("\$85.0",
                  style: TextStyle(color: Colors.white,fontSize: 15),
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
                      title: Text("7 Panel + Exp Opiates, OXY, MDMA",style: Constants.boldheading,
                        textAlign: TextAlign.center,),
                      content: Column(
                        children: [
                          ListTile(
                            title: Text("AMPHETAMINES",style: Constants.regularDarkText,),
                            trailing: Text("500 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Amphetamine",style: Constants.regularDarkText,),
                            trailing: Text("250 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Methamphetamine",style: Constants.regularDarkText,),
                            trailing: Text("250 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("BARBITURATES",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Amobarbital",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Butalbital",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Pentobarbital",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Phenobarbital",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Secobarbital",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("BENZODIAZEPINES",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Alprazolam Metabolite",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Oxazepam",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("COCAINE METABOLITES",style: Constants.regularDarkText,),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MARIJUANA METABOLITES",style: Constants.regularDarkText,),
                            trailing: Text("15ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MDA-ANALOGUES",style: Constants.regularDarkText,),
                            trailing: Text("500g/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MDA",style: Constants.regularDarkText,),
                            trailing: Text("250g/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MDMA",style: Constants.regularDarkText,),
                            trailing: Text("250g/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MDEA",style: Constants.regularDarkText,),
                            trailing: Text("250g/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("OPIATES",style: Constants.regularDarkText,),
                            trailing: Text("300 ng/mL",style: Constants.regularDarkText,),
                          ),

                          ListTile(
                            title: Text("Codeine",style: Constants.regularDarkText,),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Morphine",style: Constants.regularDarkText,),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Hydromorphone",style: Constants.regularDarkText,),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Hydrocodone",style: Constants.regularDarkText,),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("6-ACETYLMORPHINE",style: Constants.regularDarkText,),
                            trailing: Text("10 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("OXYCODONES",style: Constants.regularDarkText,),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Oxymorphone",style: Constants.regularDarkText,),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Oxycodone",style: Constants.regularDarkText,),
                            trailing: Text("100 ng/mL",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("PHENCYCLIDINE",style: Constants.regularDarkText,),
                            trailing: Text("25 ng/mL",style: Constants.regularDarkText,),
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
        ),

//TODO: 9 PANEL +
        ListTile(

          title: Text(
            "9 Panel+ Exp Opiates, Oxy, MDMA", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {

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
                child: Text("\$95.0",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          trailing:  GestureDetector(
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
                      title: Text("9 Panel + Exp Opiates, OXY, MDMA", style: Constants.boldheading,
                        textAlign: TextAlign.center,),
                      content: Column(
                        children: [
                          ListTile(
                            title: Text("AMPHETAMINES", style: Constants.regularDarkText),
                            trailing: Text("1000 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Amphetamine", style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Methamphetamine", style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("BARBITURATES", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Amobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Butalbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL"),
                          ),
                          ListTile(
                            title: Text("Pentobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL"),
                          ),
                          ListTile(
                            title: Text("Phenobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Secobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("BENZODIAZEPINES", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Alprazolam Metabolite", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxazepam", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Flurazepam Metabolite", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Lorzapam", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Nordiazepam", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Temazepam", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Triazolam Metabolite", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("COCAINE METABOLITES", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MARIJUANA METABOLITES", style: Constants.regularDarkText),
                            trailing: Text("15 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("METHADONE", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDA-ANALOGUES", style: Constants.regularDarkText),
                            trailing: Text("500g/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDA", style: Constants.regularDarkText),
                            trailing: Text("250g/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDMA", style: Constants.regularDarkText),
                            trailing: Text("250g/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDEA", style: Constants.regularDarkText),
                            trailing: Text("250g/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("OPIATES", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),

                          ListTile(
                            title: Text("Codeine", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Morphine", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Hydromorphone", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Hydrocodone", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),

                          ListTile(
                            title: Text("OXYCODONES", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxymorphone", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxycodone", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("PHENCYCLIDINE", style: Constants.regularDarkText),
                            trailing: Text("25 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("PROPOXYPHENE", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
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
        ),


//TODO: 10 PANEL +
        ListTile(

          title: Text(
            "10 Panel+ Exp Opiates, Oxy, MDMA", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {

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
                child: Text("\$105.0",
                  style: TextStyle(color: Colors.white,fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          trailing:  GestureDetector(
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
                      title: Text("10 Panel + Exp Opiates, OXY, MDMA", style: Constants.boldheading,
                        textAlign: TextAlign.center,),
                      content: Column(
                        children: [
                          ListTile(
                            title: Text("AMPHETAMINES", style: Constants.regularDarkText),
                            trailing: Text("1000 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Amphetamine", style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Methamphetamine", style: Constants.regularDarkText),
                            trailing: Text("500 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("BARBITURATES", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Amobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Butalbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style:Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Pentobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style:Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Phenobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Secobarbital", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("BENZODIAZEPINES", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Alprazolam Metabolite", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Clonazepam Metabolite", style:Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Flurazepam Metabolite", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Flunitrazepam Metabolite", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Lorzapam", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Midazolam Metabolite", style:Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Nordiazepam", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxazepam", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Temazepam", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Triazolam Metabolite", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("COCAINE METABOLITES", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MARIJUANA METABOLITES", style: Constants.regularDarkText),
                            trailing: Text("15 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("METHADONE", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style:Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDA-ANALOGUES", style: Constants.regularDarkText),
                            trailing: Text("250g/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDA", style: Constants.regularDarkText),
                            trailing: Text("200g/mL",style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDMA", style: Constants.regularDarkText),
                            trailing: Text("200g/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("MDEA", style: Constants.regularDarkText),
                            trailing: Text("200g/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("OPIATES", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),

                          ListTile(
                            title: Text("Codeine", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Morphine", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Hydromorphone", style:Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Hydrocodone", style: Constants.regularDarkText),
                            trailing: Text("300 ng/mL", style: Constants.regularDarkText),
                          ),

                          ListTile(
                            title: Text("OXYCODONES ", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxymorphone", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("Oxycodone", style: Constants.regularDarkText),
                            trailing: Text("100 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("PHENCYCLIDINE", style: Constants.regularDarkText),
                            trailing: Text("25 ng/mL", style: Constants.regularDarkText),
                          ),
                          ListTile(
                            title: Text("PROPOXYPHENE", style: Constants.regularDarkText),
                            trailing: Text("200 ng/mL", style: Constants.regularDarkText),
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
        ),


//TODO: 5 PANEL HAIR
        ListTile(

          title: Text(
            "5 panel Hair", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {

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
                child: Text("\$105.0",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          trailing:  GestureDetector(
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
                      title: Text("5 Panel Hair",
                        style: Constants.boldheading,
                        textAlign: TextAlign.center,),
                      content: Column(
                        children: [
                          ListTile(
                            title: Text("AMPHETAMINES",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Amphetamine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Methamphetamine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MDA (Methylenedioxy-Amphetamine)",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MDMA (Methylenedioxy- Methamphetamine)",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("COCAINE / METABOLITES",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Benzoylecgonine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Cocaine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Cocaethylene",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Norcocaine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MARIJUANA METABOLITE",style: Constants.regularDarkText,),
                            trailing: Text("0.1 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("OPIATES",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Morphine",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Codeine",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("6-Monoacetylmorphine (6-MAM)",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("PHENCYCLIDINE",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
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
        ),


//TODO: 5 PANEL +  HAIR
        ListTile(

          title: Text(
            "5 panel + Exp Opiates Hair", style: Constants.regularHeading,),
          subtitle: GestureDetector(
            onTap: () {

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
                child: Text("\$105.0",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          trailing:  GestureDetector(
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
                      title: Text("5 panel + Exp Opiates Hair",
                        style: Constants.boldheading,
                        textAlign: TextAlign.center,),
                      content: Column(
                        children: [
                          ListTile(
                            title: Text("AMPHETAMINES",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Amphetamine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Methamphetamine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MDA (Methylenedioxy-Amphetamine)",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MDMA (Methylenedioxy- Methamphetamine)",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("COCAINE / METABOLITES",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Benzoylecgonine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Cocaine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Cocaethylene",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Norcocaine",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("MARIJUANA METABOLITE",style: Constants.regularDarkText,),
                            trailing: Text("0.1 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("OPIATES",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Morphine",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Codeine",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Hydromorphone",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Hydrocodone",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),

                          ListTile(
                            title: Text("6-Monoacetylmorphine (6-MAM)",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Oxycodone",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),
                          ListTile(
                            title: Text("Oxymorphone",style: Constants.regularDarkText,),
                            trailing: Text("500 pg/mg",style: Constants.regularDarkText,),
                          ),

                          ListTile(
                            title: Text("PHENCYCLIDINE",style: Constants.regularDarkText,),
                            trailing: Text("300 pg/mg",style: Constants.regularDarkText,),
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
        ),





      ],
    );
  }
}
