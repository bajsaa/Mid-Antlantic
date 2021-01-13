import 'package:flutter/cupertino.dart';
import 'package:mid_antlantic/helpers/SelectTestScreenHelpers.dart';




import 'package:mid_antlantic/widgets/colors.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../constants.dart';





class TestListScreen extends StatefulWidget {



  @override
  _TestListScreenState createState() => _TestListScreenState();
}

class _TestListScreenState extends State<TestListScreen> {

  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,

      appBar: Provider.of<SelectTestHelpers>(context,listen: false).selectTestAppBar(context),

      drawer:CustomDrawer() ,

      body: Provider.of<SelectTestHelpers>(context).testsList(context),
    );
  }
}
