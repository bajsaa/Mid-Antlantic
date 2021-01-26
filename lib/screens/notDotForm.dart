import 'package:mid_antlantic/helpers/nonDotFormHelpers.dart';



import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class NonDotFormScreen extends StatefulWidget {
  @override
  _NonDotFormScreenState createState() => _NonDotFormScreenState();
}

class _NonDotFormScreenState extends State<NonDotFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Provider.of<NonDotFormHelpers>(context,listen: false).nonDotAppBar(context),
      drawer: CustomDrawer(),

      body:Provider.of<NonDotFormHelpers>(context,listen: false).dotFormBody(context) ,


      //bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}
