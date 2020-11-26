import 'package:mid_antlantic/screens/home_view_mobile.dart';
import 'package:mid_antlantic/ui/orientation_layout.dart';
import 'package:mid_antlantic/ui/screen_type_layout.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),

      ),
    );
  }
}
