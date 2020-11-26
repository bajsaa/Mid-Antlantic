// import 'package:drug_testing_app/screens/schedule_test_date.dart';
// import 'package:drug_testing_app/widgets/appBar.dart';
// import 'package:drug_testing_app/widgets/customButton.dart';
// import 'package:flutter/material.dart';
// import 'package:drug_testing_app/screens/dot_registration.dart';
// import 'package:drug_testing_app/screens/not_dot_regtistration.dart';
//
//
//
// class RegisterType extends StatefulWidget {
//   @override
//   _RegisterTypeState createState() => _RegisterTypeState();
// }
//
// class _RegisterTypeState extends State<RegisterType> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar:MyAppBar(),
//       drawer: new Drawer(
//         child: ListView(
//           children: [
//             new UserAccountsDrawerHeader(
//               accountName: new Text("displayName"),
//               accountEmail: new Text("email"),
//               currentAccountPicture: new CircleAvatar(
//                 backgroundColor: Colors.black,
//                 child: new Text("MUK"),
//               ),
//             ),
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                   title: new Text("Home"),
//                   leading: new Icon(Icons.home, color: Colors.pink,)
//               ),
//             ),
//
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                   title: new Text("My Account"),
//                   leading: new Icon(Icons.person, color: Colors.pink)
//               ),
//             ),
//
//             InkWell(
//               onTap: (){
//                 Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ScheduleTestDate()));
//               },
//               child: ListTile(
//                   title: new Text("Pick a Date"),
//                   leading: new Icon(Icons.calendar_today, color: Colors.pink)
//               ),
//             ),
//
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                   title: new Text("My Cart"),
//                   leading: new Icon(Icons.shopping_cart, color: Colors.pink )
//               ),
//             ),
//
//             Divider(),
//
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                   title: new Text("Settings"),
//                   leading: new Icon(Icons.settings, color: Colors.grey )
//               ),
//             ),
//
//             InkWell(
//               onTap: (){},
//               child: ListTile(
//                   title: new Text("About"),
//                   leading: new Icon(Icons.help, color: Colors.blue )
//               ),
//             ),
//             InkWell(
//               onTap: () async{
//
//               },
//               child: ListTile(
//                   title: new Text("Sign Out"),
//                   leading: new Icon(Icons.arrow_back, color: Colors.blue )
//               ),
//             ),
//           ],
//         ),
//       ),
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
//
//         child: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomBtn(text: "NON D.O.T",
//                 onPressed: (){
//                   Navigator
//                       .of(context)
//                       .push(MaterialPageRoute(builder: (context)=> NonDotRegistration() )
//                   );
//                 },
//               ),
//               CustomBtn(text: "D.O.T",
//                 onPressed: (){
//                   Navigator
//                       .of(context)
//                       .push(MaterialPageRoute(builder: (context)=> DotRegistration() )
//                   );
//                 },)
//             ],
//           )
//         ),
//
//
//       ),
//
//
//
//     );
//   }
// }
