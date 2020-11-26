import 'package:flutter/widgets.dart';

import '../enum/screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery){



  //Fixed Device width (changes with orientation)
  double deviceWidth = mediaQuery.size.shortestSide;



  if(deviceWidth > 950){
    return DeviceScreenType.Desktop;
  }

  if(deviceWidth > 600){
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;

}

