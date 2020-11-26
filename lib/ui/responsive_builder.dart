import 'package:mid_antlantic/ui/sizing_information.dart';
import 'package:mid_antlantic/utils/ui_utils.dart';
import 'package:flutter/material.dart';


class ResponsiveBuilder extends StatelessWidget {

  final Widget Function(
      BuildContext context,
      SizingInformation sizingInformation) builder;

  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);


  @override
  Widget build(BuildContext context) {



    return LayoutBuilder(builder: (context, boxSizing) {
      var mediaQuery = MediaQuery.of(context);
      var sizingInformation = SizingInformation(
        deviceType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
      );
      return builder(context, sizingInformation);
    });
  }


}
