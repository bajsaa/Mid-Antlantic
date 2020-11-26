import 'package:mid_antlantic/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomBtn extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool outlineBtn;
  final bool isLoading;

  CustomBtn({this.text, this.onPressed, this.outlineBtn, this.isLoading});

  @override
  Widget build(BuildContext context) {

    bool _outlineBtn = outlineBtn ?? false;
    bool _isLoading = isLoading ?? false;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 7.90 * SizeConfig.heightMultiplier,

        decoration: BoxDecoration(
          color: _outlineBtn ? Colors.transparent : Color(0xFFFFFFFF),
          border: Border.all(
            color: Colors.white,
            width: 1 * SizeConfig.widthMultiplier
          ),
          borderRadius: BorderRadius.circular(6.327512022272842 * SizeConfig.heightMultiplier)
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 6.111 * SizeConfig.widthMultiplier,
          vertical: 1 * SizeConfig.heightMultiplier
        ),
        child: Stack(
          children: [
            Visibility(
              visible: _isLoading ? false : true,
              child: Center(
                child: Text(
                text ?? "Text",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 2.107 * SizeConfig.textMultiplier,
                  color: Color(0XFF3D97A0)
                ),),
              ),
            ),
            Visibility(
              visible: _isLoading,
              child: Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(

                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
