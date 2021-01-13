
import 'package:mid_antlantic/helpers/testHistoryHelpers.dart';

import 'package:flutter/material.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';
import 'package:provider/provider.dart';




class TestHistory extends StatefulWidget {
  @override
  _TestHistoryState createState() => _TestHistoryState();
}

class _TestHistoryState extends State<TestHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
      appBar: Provider.of<TestHistoryHelpers>(context,listen: false).testHistoryAppbar(),
      body: Provider.of<TestHistoryHelpers>(context,listen: false).testHistoryBody(context),
      bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}
