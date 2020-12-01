import 'package:mid_antlantic/sizeInfo.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';


class ResponsiveWidget extends StatelessWidget {


  final Widget Function(BuildContext context, SizeInformation constraints) builder;

  const ResponsiveWidget({Key key,@required this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var orientation = MediaQuery.of(context).orientation;

    SizeInformation information = SizeInformation(width, height, orientation);

    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          drawer: CustomDrawer(),
          appBar: MyAppBar(title: Text("Find Location"), appBar: AppBar(),),
          body: Builder(builder: (context){
            return builder(context, information);
          }),
        )
    );
  }
}
