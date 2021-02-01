
import 'package:mid_antlantic/helpers/SelectTestScreenHelpers.dart';
import 'package:mid_antlantic/helpers/createUserHelpers.dart';
import 'package:mid_antlantic/helpers/profileScreenHelpers.dart';
import 'package:mid_antlantic/helpers/purchaseWorkplaceHelpers.dart';


import 'package:mid_antlantic/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';
import 'package:provider/provider.dart';
import 'helpers/RegisterCompanyHelper.dart';
import 'helpers/confirmDetailHelpers.dart';
import 'helpers/contactUsHelpers.dart';
import 'helpers/dotFormHelpers.dart';
import 'helpers/drugAddictionHelpers.dart';
import 'helpers/editNonDotFormHelpers.dart';
import 'helpers/esitDotFormHelpers.dart';
import 'helpers/findLocationHelpers.dart';
import 'helpers/joinRandomHelpers.dart';
import 'helpers/nonDotFormHelpers.dart';
import 'helpers/selectDateHelpers.dart';
import 'helpers/sucideHelpers.dart';
import 'helpers/testHistoryHelpers.dart';
import 'helpers/zoomCallHelpers.dart';
import 'screens/splash_screen.dart';

//void main() => runApp(DevicePreview(builder: (context) => MyApp(),));

void main() {

  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints){
        return OrientationBuilder(
          builder: (context, orientation){
            SizeConfig().init(constraints, orientation);
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_)=>SelectTestHelpers()),
                ChangeNotifierProvider(create: (_)=>DotFormHelpers()),
                //ChangeNotifierProvider(create: (_)=>NonDotFormHelpers()),
                ChangeNotifierProvider(create: (_)=>EditDotFormHelpers()),
                ChangeNotifierProvider(create: (_)=>EditNonDotFormHelpers()),
               // ChangeNotifierProvider(create: (_)=>ContactUsHelpers()),
                ChangeNotifierProvider(create: (_)=>ZoomCallHelpers()),
                //ChangeNotifierProvider(create: (_)=>DrugAddictionHelpers()),
                //ChangeNotifierProvider(create: (_)=>SucideHelpers()),
                ChangeNotifierProvider(create: (_)=>FindLocationHelpers()),
                ChangeNotifierProvider(create: (_)=>SelectDateHelpers()),
                ChangeNotifierProvider(create: (_)=>ConfirmDetailHelpers()),
                ChangeNotifierProvider(create: (_)=>TestHistoryHelpers()),
                ChangeNotifierProvider(create: (_)=>RegisterCompanyHelpers()),
                ChangeNotifierProvider(create: (_)=>JoinRandomHelpers()),
                ChangeNotifierProvider(create: (_)=>PurchaseWorkplaceHelpers()),
                ChangeNotifierProvider(create: (_)=>BottomNavBar()),
                ChangeNotifierProvider(create: (_)=>ProfileScreenHelpers()),
                ChangeNotifierProvider(create: (_)=>CreateUserHelpers()),
              ],
              child: MaterialApp(

                  debugShowCheckedModeBanner: false,
                  title: 'Drug Testing App',
                  theme: ThemeData(
                    textTheme: GoogleFonts.poppinsTextTheme(
                        Theme.of(context).textTheme
                    ),
                    accentColor: Colors.black,
                      primaryIconTheme: IconThemeData(color: Colors.black)
                  ),
                  home: SplashScreen()
              ),
            );
          },

        );
      },

    );
  }
}

