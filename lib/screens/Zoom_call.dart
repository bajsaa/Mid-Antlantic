
import 'package:mid_antlantic/helpers/zoomCallHelpers.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class ZoomCall extends StatefulWidget {
  @override
  _ZoomCallState createState() => _ZoomCallState();
}

class _ZoomCallState extends State<ZoomCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Provider.of<ZoomCallHelpers>(context).zoomCallAppBar(),

      body:Provider.of<ZoomCallHelpers>(context).zoomCallBody(context) ,

      bottomNavigationBar:Provider.of<ZoomCallHelpers>(context).zoomCallBottomNavBar(context) ,
    );
  }
}
