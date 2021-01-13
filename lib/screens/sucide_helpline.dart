
import 'package:mid_antlantic/helpers/sucideHelpers.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class SucideHelpLine extends StatefulWidget {
  @override
  _SucideHelpLineState createState() => _SucideHelpLineState();
}

class _SucideHelpLineState extends State<SucideHelpLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Provider.of<SucideHelpers>(context).suicideAppBar(),

      body:Provider.of<SucideHelpers>(context).suicideBody(context) ,
    );
  }
}
