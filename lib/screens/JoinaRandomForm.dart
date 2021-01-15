import 'package:flutter/material.dart';
import 'package:mid_antlantic/helpers/joinRandomHelpers.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';

import 'package:provider/provider.dart';



class JoinRandomForm extends StatefulWidget {
  @override
  _JoinRandomFormState createState() => _JoinRandomFormState();
}

class _JoinRandomFormState extends State<JoinRandomForm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      appBar: Provider.of<JoinRandomHelpers>(context,listen: false).joinRandomAppBar(context),
      body: Provider.of<JoinRandomHelpers>(context,listen: false).joinRandomBody(context),
      //bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}
