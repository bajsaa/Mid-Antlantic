import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/screens/add_location.dart';
import 'package:mid_antlantic/screens/select_drug_test_table.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomBackForwardDirectionBtn extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool outlineBtn;
  final bool isLoading;

  CustomBackForwardDirectionBtn({this.text, this.onPressed, this.outlineBtn, this.isLoading});

  @override
  Widget build(BuildContext context) {

    bool _outlineBtn = outlineBtn ?? false;
    bool _isLoading = isLoading ?? false;

    return Container(
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Navigator
                  .of(context)
                  .pop();
            },
            child: Container(
              padding: EdgeInsets.only(left: 1.273 * SizeConfig.widthMultiplier, right: 1.273 * SizeConfig.widthMultiplier, top: 1.5 * SizeConfig.heightMultiplier, bottom: 1.5 * SizeConfig.heightMultiplier),
              width: 36.231 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black
              ),
              child: Center(
                child: Text("PREVIOUS", style:TextStyle(
                  //16
                  fontSize: 1.7857 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                ),
              ),
            ),
          ),

          SizedBox(width: 3.9511 * SizeConfig.widthMultiplier,),
          GestureDetector(
            onTap: (){
              Navigator
                  .of(context)
                  .push(MaterialPageRoute(builder: (context)=> FindLocation() )
              );
            },
            child:Container(
              padding: EdgeInsets.only(left: 1.273 * SizeConfig.widthMultiplier, right: 1.273 * SizeConfig.widthMultiplier, top: 1.5 * SizeConfig.heightMultiplier, bottom: 1.5 * SizeConfig.heightMultiplier),
              width:36.231 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black
              ),
              child: Center(
                child: Text("SELECT A LAB", style:TextStyle(
                                //16
                      fontSize: 1.7857 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                ),
              ),
            ) ,
          ),
          )
        ],
      ),
    );

  }
}
