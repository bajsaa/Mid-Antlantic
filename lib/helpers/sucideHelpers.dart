// import 'package:flutter/material.dart';
// import 'package:mid_antlantic/screens/profileScreen.dart';
// import 'package:mid_antlantic/widgets/colors.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../constants.dart';
//
//
// class SucideHelpers with ChangeNotifier{
//   final ConstantColors constantColors = ConstantColors();
//   Widget suicideAppBar(BuildContext context){
//     return AppBar(
//       centerTitle: true,
//       backgroundColor: constantColors.whiteColor,
//       title: Text("Suicide Helpline", style: Constants.boldheading),
//       actions: [
//         IconButton(
//           icon: Icon(Icons.person),
//           color: Colors.black,
//           onPressed: (){
//             Navigator.push(context, PageTransition(child: ProfileScreen(), type: PageTransitionType.rightToLeft));
//           }, )
//       ],
//     );
//   }
//
//   Widget suicideBody(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.only(top: 50.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
//           children: [
//             Container(
//                 padding: EdgeInsets.all(90),
//                 child: GestureDetector(
//                     onTap:() async {
//                       const phone= 'tel: 800-273-8255';
//                       if (await canLaunch(phone)) {
//                         await launch(phone);
//                       } else {
//                         throw 'Could not launch $phone';
//                       }
//                     },
//                     child: Image.asset("assets/images/call.png"))
//             ),
//
//             Padding(
//               padding: const EdgeInsets.only(top: 50.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("SAMHSA's National HelpLine ", style: TextStyle(color: Colors.black, fontSize: 16),),
//                       GestureDetector(
//                           onTap:() async {
//                             const phone= 'tel: 800-273-8255';
//                             if (await canLaunch(phone)) {
//                               await launch(phone);
//                             } else {
//                               throw 'Could not launch $phone';
//                             }
//                           },
//                           child: Text("800-273-8255", style: TextStyle(color: Colors.red, fontSize: 16), textAlign: TextAlign.center,  ))
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 8.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Text("Visit Website ", style: TextStyle(color: Colors.black,fontSize: 16),),
//                         GestureDetector(
//                             onTap: () async {
//                               const url = 'https://suicidepreventionlifeline.org/';
//                               if (await canLaunch(url)) {
//                                 await launch(url);
//                               } else {
//                                 throw 'Could not launch $url';
//                               }
//                             },
//                             child: Text("https://suicidepreventionlifeline.org",style: TextStyle(color: Colors.red,fontSize: 16), textAlign: TextAlign.center )
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
//
//
// }