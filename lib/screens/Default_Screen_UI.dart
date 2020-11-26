// import 'package:mid_antlantic/screens/Register_type.dart';
// import 'package:mid_antlantic/screens/add_location.dart';
// import 'package:mid_antlantic/screens/dot_registration.dart';
// import 'package:mid_antlantic/screens/drug_test_helpLine.dart';
// import 'package:mid_antlantic/screens/edit_dot_registration_form.dart';
// import 'package:mid_antlantic/screens/login_screen.dart';
// import 'package:mid_antlantic/screens/not_dot_regtistration.dart';
// import 'package:mid_antlantic/screens/schedule_test_date.dart';
// import 'package:mid_antlantic/screens/select_drug_test_table.dart';
// import 'package:mid_antlantic/screens/sucide_helpline.dart';
// import 'package:mid_antlantic/screens/test_history.dart';
// import 'package:mid_antlantic/widgets/appBar.dart';
// import 'package:mid_antlantic/widgets/customButton.dart';
// import 'package:mid_antlantic/widgets/drawer.dart';
// import 'package:flutter/material.dart';
//
//
// import '../constants.dart';
// import 'edit_non_dot_registration_form.dart';
//
// class DefaultScreen extends StatefulWidget {
//   @override
//   _DefaultScreenState createState() => _DefaultScreenState();
// }
//
// class _DefaultScreenState extends State<DefaultScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: false,
//       appBar: MyAppBar(),
//       drawer: CustomDrawer(),
//
//       body: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [
//
//                   Color(0XFF3D9798),
//                   Color(0XFF2E7FC0)],
//
//                 begin: Alignment(0,0),
//                 end: Alignment(0,1)
//             )
//         ),
//         child: SingleChildScrollView(
//           child: Container(
//             child: SafeArea(
//               child: Column(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(left: 18.5, right: 15.5),
//                     padding: EdgeInsets.all(16),
//
//                         child:
//                         Text("SCREENS", style: Constants.boldheading,)
//
//
//                   ),
//
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CustomBtn(
//                         text: "login",
//                         onPressed: (){
//                         Navigator
//                             .push(context,
//                             MaterialPageRoute(builder: (_)=>LoginPage())
//                         );
//                         },
//                       ),
//
//                       CustomBtn(
//                         text: "User Type",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>RegisterType())
//                           );
//                         },
//                       ),
//                       CustomBtn(
//                         text: "Select A Drug Test",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>DrugTestTable())
//                           );
//                         },
//                       ),
//                       CustomBtn(
//                         text: "DOT Registration form",
//                         onPressed: (){
//                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DotRegistration()));
//                         },
//                       ),
//                       CustomBtn(
//                         text: "Non DOT Registration form",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>NonDotRegistration())
//                           );
//                         },
//                       ),
//                       CustomBtn(
//                         text: "Edit DOT Registration form",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>EditDotRegistrationForm())
//                           );
//                         },
//                       ),
//                       CustomBtn(
//                         text: "Edit Non DOT Registration form",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>EditNonDotRegistration())
//                           );
//                         },
//                       ),
//                       CustomBtn(
//                         text: "Schedule Test",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>ScheduleTestDate())
//                           );
//                         },
//                       ),
//
//                       CustomBtn(
//                         text: "Find a location",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>FindLocation())
//                           );
//                         },
//                       ),
//
//                       CustomBtn(
//                         text: "Drug Test HelpLine",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>DrugTestHelpLine())
//                           );
//                         },
//                       ),
//
//                       CustomBtn(
//                         text: "Suicide HelpLine",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>SucideHelpLine())
//                           );
//                         },
//                       ),
//
//
//                       CustomBtn(
//                         text: "Test Screen",
//                         onPressed: (){
//                           Navigator
//                               .push(context,
//                               MaterialPageRoute(builder: (_)=>TestHistory())
//                           );
//                         },
//                       ),
//
//
//                     ],
//                   )
//
//
//                 ],
//               ),
//             ),
//           ),
//         ),
//
//
//       ),
//     );
//   }
// }
