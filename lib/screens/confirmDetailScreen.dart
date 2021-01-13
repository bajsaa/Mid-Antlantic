

import 'package:mid_antlantic/helpers/confirmDetailHelpers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class ConfirmDetails extends StatefulWidget {
  @override
  _ConfirmDetailsState createState() => _ConfirmDetailsState();
}

class _ConfirmDetailsState extends State<ConfirmDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
      appBar: Provider.of<ConfirmDetailHelpers>(context,listen: false).confirmDetailAppbar(),
      body: Provider.of<ConfirmDetailHelpers>(context,listen: false).confirmDetailBody(context),
    );
  }
}



