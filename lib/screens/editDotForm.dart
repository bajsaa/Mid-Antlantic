
import 'package:mid_antlantic/helpers/esitDotFormHelpers.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';

import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:provider/provider.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import '../constants.dart';
class EditDotRegistrationForm extends StatefulWidget {
  @override
  _EditDotRegistrationFormState createState() => _EditDotRegistrationFormState();
}

class _EditDotRegistrationFormState extends State<EditDotRegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Provider.of<EditDotFormHelpers>(context,listen: false).editDotAppBar(context),
      drawer: CustomDrawer(),

      body:Provider.of<EditDotFormHelpers>(context,listen: false).editDotFormBody(context) ,

      bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}
