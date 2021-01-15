
import 'package:mid_antlantic/helpers/contactUsHelpers.dart';





import 'package:flutter/material.dart';
import 'package:provider/provider.dart';





class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Provider.of<ContactUsHelpers>(context,listen: false).contactUsAppBar(context),

      body:Provider.of<ContactUsHelpers>(context,listen: false).contactUsBody(context) ,
     // bottomNavigationBar:Provider.of<ContactUsHelpers>(context,listen: false).contactUsBottomNavBar(context),
    );
  }
}
