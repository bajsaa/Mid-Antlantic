import 'package:mid_antlantic/screens/add_location.dart';
import 'package:mid_antlantic/screens/first_screen.dart';
import 'package:mid_antlantic/screens/test_history.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:flutter/material.dart';
import '../screens/select_drug_test_table.dart';



class MyBottomNavBar extends StatelessWidget{



  final String imageIcon1;
  final String imageIcon2;
  final String imageIcon3;
  final String imageIcon4;


  MyBottomNavBar(this.imageIcon1, this.imageIcon2, this.imageIcon3, this.imageIcon4);

  @override
  Widget build(BuildContext context){

    return new BottomNavigationBar(
      //elevation: 5.0,

      type : BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      unselectedLabelStyle: TextStyle( fontSize: 16, color: Colors.black),
      selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black) ,
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FirstScreen()));
                },
                child: Image.asset(imageIcon1, height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
            label: "Test"
        ),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FindLocation()));
                },
                child: Image.asset(imageIcon2,  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
            label: "Location",

        ),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestHistory()));
                },
                child: Image.asset(imageIcon3,  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
            label: "Order"
        ),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: (){},
                child: Image.asset(imageIcon4,  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
            label: "Profile"
        ),

      ],
    );
  }


}



// class BottomTabs extends StatefulWidget {
//   final int selectedTab;
//   final Function(int) tabPressed;
//   BottomTabs({this.selectedTab, this.tabPressed});
//   @override
//   _BottomTabsState createState() => _BottomTabsState();
// }
//
// class _BottomTabsState extends State<BottomTabs> {
//   int _selectedTab = 0;
//   @override
//   Widget build(BuildContext context) {
//     _selectedTab = widget.selectedTab ?? 0;
//     return Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [
//
//                   Color(0XFF3D9798),
//                   Color(0XFF2E7FC0)],
//
//                 begin: Alignment(0,0),
//                 end: Alignment(0,1)
//             ),
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(12.0),
//                 topRight: Radius.circular(12.0)
//
//             ),
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.black.withOpacity(0.2),
//                   spreadRadius: 1.0,
//                   blurRadius: 30.0
//               ),
//             ]
//
//         ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           BottomTabBtn(),
//           BottomTabBtn(),
//           BottomTabBtn(),
//           BottomTabBtn(),
//         ],
//       ),
//
//
//     );
//   }
// }
//
//
// class BottomTabBtn extends StatelessWidget {
//
//   final imagePath;
//   final bool selected;
//   final Function onPressed;
//
//   const BottomTabBtn({Key key, this.imagePath, this.selected, this.onPressed}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//     bool _selected =  selected  ?? false;
//
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//             vertical: 16.0,
//             horizontal: 12.0
//         ),
//         decoration: BoxDecoration(
//             border: Border(
//                 top: BorderSide(
//                     color: _selected ? Theme.of(context).accentColor : Colors.transparent,
//                     width: 2.0
//                 )
//             )
//         ),
//         child: Image(
//           image: AssetImage(imagePath ?? "assets/images/test.png"),
//           width: 26.0,
//           height: 26.0,
//           color: _selected ? Colors.black : Colors.white ,
//         ),
//       ),
//     );
//   }
// }

