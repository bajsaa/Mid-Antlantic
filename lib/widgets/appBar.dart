import 'package:flutter/material.dart';
import 'package:mid_antlantic/models/product_model.dart';
import 'package:mid_antlantic/screens/cart_screen.dart';


// class MyAppBar extends AppBar {
//
//
//
//
//
//   MyAppBar()
//       : super(
//       elevation: 0,
//       centerTitle: true,
//       backgroundColor: Color(0XFF3D9798).withOpacity(1),
//       actions: <Widget>[
//         IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.add_shopping_cart),
//           color: Colors.white,
//         )
//       ]);
// }


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {


  final Text title;
  final AppBar appBar;
  const MyAppBar({Key key, this.title, this.appBar, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ProductModel> cart = [];
    double sum = 0;
    return AppBar(
      elevation: 2.0,
      title: title,
        iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      backgroundColor: Colors.white,
      //Color(0XFF3D9798).withOpacity(1),
        actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CartScreen(cart, sum)));
              },
              child: Icon(Icons.add_shopping_cart)),
          color: Colors.black,
        )
      ]);
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);

}
