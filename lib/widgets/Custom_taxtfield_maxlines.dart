import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mid_antlantic/constants.dart';

import '../size_config.dart';

class CustomTextFieldMaxLines extends StatelessWidget {

  final String hintText;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final bool isObscureText;

  CustomTextFieldMaxLines({this.hintText, this.onChanged, this.onSubmitted, this.focusNode, this.textInputAction, this.isObscureText});
  @override
  Widget build(BuildContext context) {

    bool _isObscureText = isObscureText ?? false;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: 6.111 * SizeConfig.widthMultiplier,
          vertical: 1 * SizeConfig.heightMultiplier
      ),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black
          ),
          borderRadius: BorderRadius.circular(6.327512022272842 * SizeConfig.heightMultiplier)
      ),
      child: TextField(
        maxLines: 5,
        focusNode: focusNode,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        textInputAction: textInputAction,
        obscureText: _isObscureText,
        decoration: InputDecoration(
            hintText: hintText ?? 'hint text',
            hintStyle: TextStyle(color: Colors.black26),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
                horizontal: 6.111 * SizeConfig.widthMultiplier,
                vertical: 2.370 * SizeConfig.heightMultiplier
            )
        ),
        style: Constants.regularDarkText,
      ),
    );
  }
}
