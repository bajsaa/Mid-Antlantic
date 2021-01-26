import 'package:mid_antlantic/helpers/createUserHelpers.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateUserScreen extends StatefulWidget {
  @override
  _CreateUserScreenState createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Provider.of<CreateUserHelpers>(context,listen: false).createUserBody(context),
      // drawer: CustomDrawer(),

      body:Provider.of<CreateUserHelpers>(context,listen: false).createUserBody(context) ,

      // bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}
