import 'package:flutter/material.dart';

class MyAppBar extends AppBar {

  MyAppBar()
      : super(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Color(0XFF3D9798).withOpacity(1),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_shopping_cart),
          color: Colors.white,
        )
      ]);
}
