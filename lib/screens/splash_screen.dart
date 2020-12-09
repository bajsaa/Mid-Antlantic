

import 'package:flutter/material.dart';

import 'package:mid_antlantic/models/product_model.dart';


import 'package:mid_antlantic/size_config.dart';
import 'package:mid_antlantic/widgets/customButton.dart';

import 'package:url_launcher/url_launcher.dart';
import 'Select_Drug_Screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

List<ProductModel> cart = [];
double sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context){
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.only(top: 100),
                  margin: EdgeInsets.all(40),
                  height: 28.160714 * SizeConfig.heightMultiplier,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/newlogo.png",)
              ),


              Column(
                children: [
                  CustomBtn(
                    text: "Drug Testing",
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>
                         FirstScreen((selectedProduct){
                           setState(() {
                             cart.add(selectedProduct);//update
                             sum = 0;
                             cart.forEach((item){
                               sum = sum + item.price;
                             });
                           });
                         })
                      ));
                    },
                  ),
                  CustomBtn(
                    text: "Background Check",
                    onPressed: (){
                      SnackBar snackBar = SnackBar(content: Text("Coming Soon"),duration: Duration(milliseconds: 2000),);
                      Scaffold.of(context).showSnackBar(snackBar);
                    },
                  ),
                  CustomBtn(
                      text: "DNA Testing",
                      onPressed: (){
                        SnackBar snackBar = SnackBar(content: Text("Coming Soon"),duration: Duration(milliseconds: 2000),);
                        Scaffold.of(context).showSnackBar(snackBar);
                      }
                  )
                ],
              ),


              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Website: ", style: TextStyle(color: Colors.black),),
                              GestureDetector(
                                  onTap: () async {
                                    const url = 'https://www.jerseydrugtesting.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Text("www.jerseydrugtesting.com", style: TextStyle(color: Colors.red), textAlign: TextAlign.center ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Email: ", style: TextStyle(color: Colors.black),),
                              GestureDetector(
                                  onTap: () async {
                                    const url = 'mailto:info@jerseydrugtesting.com';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'Could not launch $url';
                                    }
                                  },
                                  child: Text("info@jerseydrugtesting.com",style: TextStyle(color: Colors.red), textAlign: TextAlign.center )
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Telephone no: ", style: TextStyle(color: Colors.black),),
                              GestureDetector(
                                  onTap: () async {
                                    const phone= 'tel: 732-356-8608';
                                    if (await canLaunch(phone)) {
                                      await launch(phone);
                                    } else {
                                      throw 'Could not launch $phone';
                                    }
                                  },
                                  child: Text("(732)356-8608",style: TextStyle(color: Colors.red), textAlign: TextAlign.center )
                              )
                            ],
                          )



                        ],
                      ),
                    ),
                  ),

                  // FittedBox(child: Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: ThreeButtons(),
                  // ))
                ],
              ),






            ],
          ),

        );
      })
    );
  }
}