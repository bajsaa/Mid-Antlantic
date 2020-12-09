import 'package:flutter/cupertino.dart';
import 'package:mid_antlantic/models/product_model.dart';
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



// class ProductScreen extends StatelessWidget {
//
//   final ValueSetter<ProductModel> _valueSetter;
//   ProductScreen(this._valueSetter);
//
//   List<ProductModel> test = [
//     ProductModel("DOT Drug Panel(CDL Drivers)", 75.00),
//     ProductModel("5 Panel", 60.00),
//     ProductModel("7 Panel", 65.00),
//     ProductModel("9 Panel", 70.00),
//     ProductModel("10 Panel", 75.00),
//     ProductModel("5 Panel+ Exp Opiates Oxy, MDMA", 80.00),
//     ProductModel("7 Panel+ Exp Opiates, Oxy, MDMA", 85.00),
//     ProductModel("9 Panel+ Exp Opiates, Oxy, MDMA", 95.00),
//     ProductModel("10 Panel+ Exp Opiates, Oxy, MDMA", 105.00),
//     ProductModel("5 Panel", 140.00),
//     ProductModel("5 Panel + exp Opiates", 150.00),
//
//   ];
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppBar(title: Text(
//           "Select Drug Test", style: TextStyle(color: Colors.black)),
//            appBar: AppBar(),),
//       body: ListView.separated(
//           itemBuilder: (context, index){
//             return ListTile(
//               title: Text(test[index].name),
//             subtitle: GestureDetector(
//                     onTap: () {
//                       _valueSetter(test[index]);
//                       Navigator.of(context).push(MaterialPageRoute(builder: (
//                           _) => DotRegistration()));
//                     },
//                     child: Container(
//                       height: 3.90625 * SizeConfig.heightMultiplier,
//                       decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(
//                             vertical: 0.613839 * SizeConfig.heightMultiplier),
//                         child: Text("\$${test[0].price}",
//                           style: TextStyle(color: Colors.white),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                   ),
//             trailing: GestureDetector(
//                       onTap: () {
//                         showDialog(context: context, builder: (context) {
//                           return Container(
//                             padding: EdgeInsets.only(
//                                 top: 20.32142 * SizeConfig.heightMultiplier,
//                                 bottom: 13.32142 * SizeConfig.heightMultiplier,
//                                 left: 20,
//                                 right: 20),
//                             child: AlertDialog(
//
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(50)
//                               ),
//                               title: Text("DOT Drug Panel(CDL Drivers)",
//                                 textAlign: TextAlign.center,),
//                               content: SingleChildScrollView(child: Text(
//                                   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
//                               actions: [
//                                 FlatButton(
//                                     onPressed: () {
//                                       Navigator.pop(context);
//                                     },
//                                     child: Text("Close",
//                                       style: TextStyle(color: Colors.black),))
//                               ],
//                             ),
//                           );
//                         }
//                         );
//                       },
//                       child: Icon(Icons.help, color: Colors.blueAccent,),
//
//             ));
//           },
//           separatorBuilder: (context, index){
//             return Divider();
//           },
//           itemCount: test.length
//       ),
//     );
//   }
// }




class FirstScreen extends StatelessWidget {



  List<ProductModel> tests = [
    ProductModel("DOT Drug Panel(CDL Drivers)", 75.00),
    ProductModel("5 Panel", 60.00),
    ProductModel("7 Panel", 65.00),
    ProductModel("9 Panel", 70.00),
    ProductModel("10 Panel", 75.00),
    ProductModel("5 Panel+ Exp Opiates Oxy, MDMA", 80.00),
    ProductModel("7 Panel+ Exp Opiates, Oxy, MDMA", 85.00),
    ProductModel("9 Panel+ Exp Opiates, Oxy, MDMA", 95.00),
    ProductModel("10 Panel+ Exp Opiates, Oxy, MDMA", 105.00),
    ProductModel("5 Panel", 140.00),
    ProductModel("5 Panel + exp Opiates", 150.00),
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
            ListTile(
              tileColor: Colors.black26,
              title: Text(
                "${tests[0].name}", style: Constants.regularDarkText,),
              subtitle: GestureDetector(
                onTap: () {

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => DotRegistration()));
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
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                              scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                                child: DataTable(
                                columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
              trailing:  GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
              trailing:  GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
              trailing:  GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
              trailing:  GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
              trailing:  GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
              trailing:  GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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
                "${tests[9].name}", style: Constants.regularDarkText,),
              subtitle: GestureDetector(
                onTap: () {

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
              trailing:  GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NonDotRegistration()));
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
              trailing:  GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AlertDialog(
                            scrollable: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            title: Text("DOT Drug Panel(CDL Drivers)",
                              textAlign: TextAlign.center,),
                            content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  columnSpacing: 8.0,
                                  columns: [
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 29.55458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG CLASS",
                                            style: Constants.regularHeading
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("INITIAL TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY TEST LEVEL",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    ),
                                    DataColumn(
                                      numeric: false,
                                      label: Container(
                                        //100
                                        width: 24.15458 * SizeConfig.widthMultiplier,
                                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>FittedBox(
                                          child: Text("CONFIRMATORY METHOD",
                                              style: Constants.regularHeading
                                          ),
                                        ),),
                                      ),
                                    )

                                  ],
                                  rows: [
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "AMPHETAMINES",
                                              child: Text("AMPHETAMINES",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("1000 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),
                                    DataRow(
                                        cells: <DataCell>[
                                          DataCell(
                                            Tooltip(
                                              message: "Amphetamine",
                                              child: Text("Amphetamine",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,)),
                                            ),




                                          ),
                                          DataCell(
                                              Text("",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("500 ng/mL",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),
                                          DataCell(
                                              Text("MS",
                                                  style: TextStyle(
                                                    fontSize: 1.452  * SizeConfig.textMultiplier,
                                                    fontFamily:"Poppins",
                                                    color: Colors.black,))
                                          ),


                                        ]
                                    ),

                                  ],
                                )),
                            actions: [
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Close",
                                    style: TextStyle(color: Colors.black),))
                            ],
                          ),
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


      );
    },);
  }


}
