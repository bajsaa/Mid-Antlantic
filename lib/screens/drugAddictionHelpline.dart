
import 'package:mid_antlantic/helpers/drugAddictionHelpers.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class DrugTestHelpLine extends StatefulWidget {
  @override
  _DrugTestHelpLineState createState() => _DrugTestHelpLineState();
}

class _DrugTestHelpLineState extends State<DrugTestHelpLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Provider.of<DrugAddictionHelpers>(context).drugAddictionAppBar(),

      body:Provider.of<DrugAddictionHelpers>(context).drugAddictionBody(context) ,
    );
  }
}
