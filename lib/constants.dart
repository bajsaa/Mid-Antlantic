import 'package:mid_antlantic/size_config.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants{

  static final regularHeading = TextStyle(
      //18
      fontSize: 2.0089 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.black
  );

  static final boldheading = TextStyle(
      //20
      fontSize: 3.2321 * SizeConfig.textMultiplier ,
      fontWeight: FontWeight.w600,
      color: Colors.black

  );

  static final regularDarkText = TextStyle(
      //16
      fontSize: 1.7857 * SizeConfig.textMultiplier,
      fontWeight: FontWeight.w600,
      color: Colors.black

  );

}