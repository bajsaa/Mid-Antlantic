import 'package:flutter/material.dart';
import 'package:mid_antlantic/helpers/RegisterCompanyHelper.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';
import 'package:provider/provider.dart';


class RegisterCompanyForm extends StatefulWidget {
  @override
  _RegisterCompanyFormState createState() => _RegisterCompanyFormState();
}

class _RegisterCompanyFormState extends State<RegisterCompanyForm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
      appBar: Provider.of<RegisterCompanyHelpers>(context,listen: false).registerCompanyAppBar(),
      body: Provider.of<RegisterCompanyHelpers>(context,listen: false).registerCompanyBody(context),
      bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}
