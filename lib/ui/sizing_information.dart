import 'package:mid_antlantic/enum/screen_type.dart';
import 'package:flutter/material.dart';

class SizingInformation{

  final DeviceScreenType deviceType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {
      this.deviceType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {

    return 'DeviceType:$deviceType  ScreenSize:$screenSize LocalWidgetSize: $localWidgetSize';
  }



}
