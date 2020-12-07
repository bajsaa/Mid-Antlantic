import 'package:flutter/material.dart';
import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/screens/payment_screen.dart';
import 'package:mid_antlantic/test_model.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
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
                        title: Text("5 Panel", style: Constants.regularHeading,),
                        subtitle: Text("\$75"),
                      ),

                    ],
                  ),
                ),
              ),
              //CustomBtn(text: "Check Out", onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PaymentScreen()));},)
            ],
          ),
        ),

        //bottomNavigationBar:MyBottomNavBar("assets/images/testblack.png", "assets/images/locationblack.png", "assets/images/orderblack.png" ,"assets/images/profileblack.png" )

      bottomNavigationBar: new Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
        child: Row(
          children: [
            Expanded(
                child: ListTile(
                  title: Text("Total", style: Constants.regularDarkText,),
                  subtitle:Text("\$75") ,

                )
            ),
            Expanded(child: MaterialButton(
              child: Text("CheckOut", style: TextStyle(color: Colors.white, fontSize: 16),),
              color: Colors.black,disabledColor: Colors.black,
                onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PaymentScreen()));},
              height: 80,
            )
            )
          ],
        ),
      ),



    );
  }
}
