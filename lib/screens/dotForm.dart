import 'package:mid_antlantic/helpers/dotFormHelpers.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

 class DotFormScreen extends StatefulWidget {
   @override
   _DotFormScreenState createState() => _DotFormScreenState();
 }

 class _DotFormScreenState extends State<DotFormScreen> {


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: Provider.of<DotFormHelpers>(context,listen: false).dotAppBar(context),
       drawer: CustomDrawer(),

       body:Provider.of<DotFormHelpers>(context,listen: false).dotFormBody(context) ,

      // bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
     );
   }
 }
 