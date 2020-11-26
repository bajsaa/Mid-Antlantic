import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomForwardDirectionBtn extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool outlineBtn;
  final bool isLoading;

  CustomForwardDirectionBtn({this.text, this.onPressed, this.outlineBtn, this.isLoading});

  @override
  Widget build(BuildContext context) {

    bool _outlineBtn = outlineBtn ?? false;
    bool _isLoading = isLoading ?? false;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 60.0,
        padding: EdgeInsets.all(100),
        decoration: BoxDecoration(
            color: _outlineBtn ? Colors.transparent : Color(0xFFFFFFFF),
            border: Border.all(
                color: Colors.white,
                width: 2.0
            ),
            borderRadius: BorderRadius.circular(30.0)
        ),
        margin: EdgeInsets.symmetric(
            horizontal: 50.0,
            vertical: 8.0
        ),
        child: Stack(
          children: [
            Visibility(
              visible: _isLoading ? false : true,
              child: Row(
                children: [
                  Icon(Icons.arrow_forward_rounded, size: 30,),

                  Center(
                    child: Text(
                      text ?? "Text",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                          color: Color(0XFF409B92)
                      ),
                    ),
                  ),
                ],
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
