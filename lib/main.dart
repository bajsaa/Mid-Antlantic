import 'package:device_preview/device_preview.dart';
import 'package:mid_antlantic/screens/Select_Drug_Screen.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/splash_screen.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp(),));

//void main() => runApp( MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints){
        return OrientationBuilder(
          builder: (context, orientation){
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
                builder: DevicePreview.appBuilder ,
                debugShowCheckedModeBanner: false,
                title: 'Drug Testing App',
                theme: ThemeData(
                  textTheme: GoogleFonts.poppinsTextTheme(
                      Theme.of(context).textTheme
                  ),
                ),
                home: SplashScreen()
            );
          },

        );
      },

    );
  }
}

