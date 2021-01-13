
import 'package:mid_antlantic/helpers/editNonDotFormHelpers.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class EditNonDotRegistration extends StatefulWidget {
  @override
  _EditNonDotRegistrationState createState() => _EditNonDotRegistrationState();
}

class _EditNonDotRegistrationState extends State<EditNonDotRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Provider.of<EditNonDotFormHelpers>(context,listen: false).editNonDotAppBar(context),
      drawer: CustomDrawer(),

      body:Provider.of<EditNonDotFormHelpers>(context,listen: false).editNonDotFormBody(context) ,

      bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}
