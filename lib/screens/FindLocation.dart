import 'package:flutter/cupertino.dart';
import 'package:mid_antlantic/helpers/findLocationHelpers.dart';

import 'package:flutter/material.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';
import 'package:provider/provider.dart';



class FindLocation extends StatefulWidget {
  @override
  _FindLocationState createState() => _FindLocationState();
}

class _FindLocationState extends State<FindLocation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Provider.of<FindLocationHelpers>(context,listen: false).findLocationAppbar(context),
      body: Provider.of<FindLocationHelpers>(context,listen: false).findLocationBody(context),
     // bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}
//keytool -genkey -v -keystore F:\keystores\midAntlaniticnonloginkeystore\key.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias key