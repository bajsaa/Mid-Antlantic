import 'package:mid_antlantic/enum/screen_type.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:flutter/material.dart';


class ScreenTypeLayout extends StatelessWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenTypeLayout({Key key, this.mobile, this.tablet, this.desktop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        if(sizingInformation.deviceType == DeviceScreenType.Tablet){
          if(tablet !=null){
            return tablet;
          }
        }
        if(sizingInformation.deviceType == DeviceScreenType.Desktop){
          if(desktop != null){
            return desktop;
          }
        }

          return mobile;
      },
    );
  }
}
