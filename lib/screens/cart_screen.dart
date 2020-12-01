import 'package:flutter/material.dart';
import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/appBar_cart.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/drawer.dart';


class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        extendBodyBehindAppBar: false,
        appBar: MyAppBarCart(title: Text("Cart", style: TextStyle(color: Colors.black),),appBar: AppBar()),
        drawer: CustomDrawer(),

        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         colors: [
          //
          //           Color(0XFF3D9798),
          //           Color(0XFF2E7FC0)],
          //
          //         begin: Alignment(0,0),
          //         end: Alignment(0,1)
          //     )
          // ),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      ListTile(
                        title: Text("DOT Drug Panel(CDL Drivers)", style: Constants.regularHeading,),
                        subtitle: Text("Price: 75\$"),
                      ),
                      Divider(color: Colors.black, thickness: 1,),
                      ListTile(
                        title: Text("5 Panel", style: Constants.regularHeading),
                        subtitle: Text("Price: 60\$"),
                      ),
                      Divider(color: Colors.black, thickness: 1,),
                      ListTile(
                        title: Text("7 Panel", style: Constants.regularHeading),
                        subtitle: Text("Price: 65\$"),
                      ),
                      Divider(color: Colors.black, thickness: 1,),
                      ListTile(
                        title: Text("10 Panel", style: Constants.regularHeading),
                        subtitle: Text("Price: 75\$"),
                      ),
                      Divider(color: Colors.black, thickness: 1,),
                      ListTile(
                        title: Text("5 Panel+ Exp Opiates Oxy, MDMA", style: Constants.regularHeading),
                        subtitle: Text("Price: 80\$"),
                      ),
                    ],
                  ),
                ),
              ),
              CustomBtn(text: "Check Out",)
            ],
          ),
        )



    );
  }
}
