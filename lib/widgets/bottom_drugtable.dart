
import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/dot_registration.dart';
import 'package:mid_antlantic/screens/not_dot_regtistration.dart';

import '../size_config.dart';
import 'customButton.dart';

class BottomDrugTable extends StatefulWidget {
  final int selectedTab;
  final Function(int) tabPressed;
  BottomDrugTable({this.selectedTab, this.tabPressed});

  @override
  _BottomDrugTableState createState() => _BottomDrugTableState();
}

class _BottomDrugTableState extends State<BottomDrugTable> {
  int _selectedTab = 0;



  @override
  Widget build(BuildContext context) {

    _selectedTab = widget.selectedTab ?? 0;

    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF2E7FC0),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0)

          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1.0,
                blurRadius: 30.0
            )
          ]


      ),
      child: CustomBtn(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return Container(
              padding: EdgeInsets.only( top: 20.32142 * SizeConfig.heightMultiplier, bottom:13.32142 * SizeConfig.heightMultiplier,left: 20, right: 20),
              child: AlertDialog(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                title: Text("PLEASE CHOOSE", textAlign: TextAlign.center,),
                content: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomBtn(text: "D.O.T", onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DotRegistration()));},),
                    CustomBtn(text: "Non D.O.T",onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NonDotRegistration()));},)
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: (){Navigator.pop(context);},
                      child: Text("Close"))
                ],
              ),
            );
          }
          );
        },
        text: "Proceed to registration",
      )
    );
  }
}

class BottomTabBtn extends StatelessWidget {

  final imagePath;
  final bool selected;
  final Function onPressed;

  BottomTabBtn({this.imagePath, this.selected, this.onPressed});
  @override
  Widget build(BuildContext context) {

    bool _selected =  selected  ?? false;
    return GestureDetector(
      onTap: onPressed ,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 12.0
        ),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: _selected ? Theme.of(context).accentColor : Colors.transparent,
                    width: 2.0
                )
            )
        ),
        child: Image(
          image: AssetImage(imagePath ?? "assets/images/tab_home.png"),
          width: 26.0,
          height: 26.0,
          color: _selected ? Theme.of(context).accentColor : Colors.black ,
        ),
      ),
    );
  }
}

