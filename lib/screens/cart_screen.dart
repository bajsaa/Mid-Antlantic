import 'package:flutter/material.dart';
import 'package:mid_antlantic/constants.dart';
import 'package:mid_antlantic/models/product_model.dart';
import 'package:mid_antlantic/screens/payment_screen.dart';
import 'package:mid_antlantic/test_model.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/appBar_cart.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/drawer.dart';


class CartScreen extends StatelessWidget {

  final cart;
  final sum;

  CartScreen(this.cart,this.sum);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        extendBodyBehindAppBar: false,
        appBar: MyAppBarCart(title: Text("Cart", style: TextStyle(color: Colors.black),),appBar: AppBar()),
        drawer: CustomDrawer(),

        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  child:    ListView.separated(
                    itemBuilder: (context, index){
                      return ListTile(
                        title: Text(cart[index].name),
                        trailing: Text("\$${cart[index].price}", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.w500),),
                        onTap: (){

                        },
                      );
                    },
                    separatorBuilder: (context, index){
                      return Divider();
                    },
                    itemCount: cart.length,
                    shrinkWrap: true,
                  )
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
