import 'package:flutter/cupertino.dart';
import 'package:mid_antlantic/screens/dot_registration.dart';
import 'package:mid_antlantic/screens/not_dot_regtistration.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../test_model.dart';








class FirstScreen extends StatefulWidget {



  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  // bool isInCart(AppState appState, String id ){
  //   final List<TestModel> cartProducts = state.cartProducts;
  //   return cartProducts.
  // }


  List<TestModel> tests = [
    TestModel("DOT Drug Panel(CDL Drivers)", 75.00),
    TestModel("5 Panel", 60.00),
    TestModel("7 Panel", 65.00),
    TestModel("9 Panel", 70.00),
    TestModel("10 Panel", 75.00),
    TestModel("5 Panel+ Exp Opiates Oxy, MDMA", 80.00),
    TestModel("7 Panel+ Exp Opiates, Oxy, MDMA", 85.00),
    TestModel("9 Panel+ Exp Opiates, Oxy, MDMA", 95.00),
    TestModel("10 Panel+ Exp Opiates, Oxy, MDMA", 105.00),
    TestModel("5 Panel", 140.00),
    TestModel("5 Panel + exp Opiates", 150.00),
  ];


  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: MyAppBar(title: Text(
            "Select Drug Test", style: TextStyle(color: Colors.black)),
          appBar: AppBar(),),

        drawer: CustomDrawer(),


        body: ListView(
          children: [
            ExpansionTile(
              title: Text("URINE TEST", style: Constants.regularHeading,),
              children: [
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[0].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {

                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => DotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[0].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text("DOT Drug Panel(CDL Drivers)",
                                textAlign: TextAlign.center,),
                              content: SingleChildScrollView(child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),

                ),
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[1].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[1].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text(
                                "5 Panel", textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                ),
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[2].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[2].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text(
                                "7 Panel", textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                ),
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[3].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[3].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text(
                                "9 Panel", textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                ),
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[4].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[4].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text(
                                "10 Panel", textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                ),
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[5].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[5].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text("5 Panel+ Exp Opiates Oxy, MDMA",
                                textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                ),
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[6].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[6].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text("7 Panel+ Exp Opiates, Oxy, MDMA",
                                textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                ),
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[7].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[7].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text("9 Panel+ Exp Opiates, Oxy, MDMA",
                                textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                ),
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[8].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[8].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text("10 Panel+ Exp Opiates, Oxy, MDMA",
                                textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                )
              ],
            ),
            Divider(color: Colors.black,),
            ExpansionTile(
              title: Text("HAIR TEST", style: Constants.regularHeading,),
              children: [
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[9].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier
                        ),
                        child: Text("\$${tests[9].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text(
                                "5 Panel", textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                ),
                ListTile(
                  tileColor: Colors.black26,
                  title: Text(
                    "${tests[10].name}", style: Constants.regularDarkText,),
                  subtitle: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          _) => NonDotRegistration()));
                    },
                    child: Container(
                      height: 3.90625 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.613839 * SizeConfig.heightMultiplier),
                        child: Text("\$${tests[10].price}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  trailing: GestureDetector(
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return Container(
                            padding: EdgeInsets.only(
                                top: 20.32142 * SizeConfig.heightMultiplier,
                                bottom: 13.32142 * SizeConfig.heightMultiplier,
                                left: 20,
                                right: 20),
                            child: AlertDialog(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              title: Text("5 Panel + exp Opiates",
                                textAlign: TextAlign.center,),
                              content: SingleChildScrollView(
                                  child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close",
                                      style: TextStyle(color: Colors.black),))
                              ],
                            ),
                          );
                        }
                        );
                      },
                      child: Icon(Icons.help, color: Colors.blueAccent,)
                  ),
                ),
              ],
            ),
            Divider(color: Colors.black),
            // ExpansionTile(
            //   title: Text("DRUG AND ALCOHOL TEST", style: Constants.regularHeading,),
            //   children: [
            //     ListTile(
            //       tileColor: Colors.black26,
            //       title: Text("DOT Drug + Alcohol CDL Drivers", style: Constants.regularDarkText,),
            //       subtitle: GestureDetector(
            //         onTap: (){
            //           Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DotRegistration()));
            //         },
            //         child: Container(
            //           height:3.90625 * SizeConfig.heightMultiplier,
            //           decoration: BoxDecoration(
            //               color: Colors.black,
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Padding(
            //             padding: EdgeInsets.symmetric(vertical:0.613839 * SizeConfig.heightMultiplier),
            //             child: Text("\$75.00",
            //               style: TextStyle(color: Colors.white),
            //               textAlign: TextAlign.center,
            //             ),
            //           ),
            //         ),
            //       ),
            //       trailing: GestureDetector(
            //           onTap: (){
            //             showDialog(context: context, builder: (context){
            //               return Container(
            //                 padding: EdgeInsets.only( top: 20.32142 * SizeConfig.heightMultiplier, bottom:13.32142 * SizeConfig.heightMultiplier,left: 20, right: 20),
            //                 child: AlertDialog(
            //
            //                   shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(50)
            //                   ),
            //                   title: Text("DOT Drug + Alcohol CDL Drivers", textAlign: TextAlign.center,),
            //                   content: SingleChildScrollView(
            //                       child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
            //                   actions: [
            //                     FlatButton(
            //                         onPressed: (){Navigator.pop(context);},
            //                         child: Text("Close", style: TextStyle(color:Colors.black ),))
            //                   ],
            //                 ),
            //               );
            //             }
            //             );
            //           },
            //           child: Icon(Icons.help, color: Colors.blueAccent,)
            //       ),
            //     ),
            //     ListTile(
            //       tileColor: Colors.black26,
            //       title: Text("10 Panel Drug & Alcohol Test", style: Constants.regularDarkText,),
            //       subtitle:GestureDetector(
            //         onTap: (){
            //           Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NonDotRegistration()));
            //         },
            //         child: Container(
            //
            //           height:3.90625 * SizeConfig.heightMultiplier,
            //           decoration: BoxDecoration(
            //               color: Colors.black,
            //               borderRadius: BorderRadius.circular(10)
            //           ),
            //           child: Padding(
            //             padding:  EdgeInsets.symmetric(vertical: 0.613839 * SizeConfig.heightMultiplier),
            //             child: Text("\$75.00",
            //               style: TextStyle(color: Colors.white),
            //               textAlign: TextAlign.center,
            //             ),
            //           ),
            //         ),
            //       ),
            //       trailing: GestureDetector(
            //           onTap: (){
            //             showDialog(context: context, builder: (context){
            //               return Container(
            //                 padding: EdgeInsets.only( top: 20.32142 * SizeConfig.heightMultiplier, bottom:13.32142 * SizeConfig.heightMultiplier,left: 20, right: 20),
            //                 child: AlertDialog(
            //
            //                   shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(50)
            //                   ),
            //                   title: Text("10 Panel Drug & Alcohol Test", textAlign: TextAlign.center,),
            //                   content: SingleChildScrollView(
            //                       child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
            //                   actions: [
            //                     FlatButton(
            //                         onPressed: (){Navigator.pop(context);},
            //                         child: Text("Close", style: TextStyle(color:Colors.black ),))
            //                   ],
            //                 ),
            //               );
            //             }
            //             );
            //           },
            //           child: Icon(Icons.help, color: Colors.blueAccent,)
            //       ),
            //     ),
            //
            //   ],
            // )
          ],
        ),


      );
    },);
  }
}




