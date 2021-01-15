import 'package:flutter/material.dart';
import 'package:mid_antlantic/helpers/profileScreenHelpers.dart';
import 'package:provider/provider.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Provider.of<ProfileScreenHelpers>(context).profileScreenAppbar(context),
      body: Provider.of<ProfileScreenHelpers>(context).profileScreenBody(context),
    );
  }
}
