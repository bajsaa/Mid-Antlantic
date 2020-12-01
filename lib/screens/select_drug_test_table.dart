import 'package:mid_antlantic/screens/dot_registration.dart';
import 'package:mid_antlantic/screens/not_dot_regtistration.dart';
import 'package:mid_antlantic/screens/schedule_test_date.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/bottom_drugtable.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/custom_field.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';


class DrugTestTable extends StatefulWidget {
  @override
  _DrugTestTableState createState() => _DrugTestTableState();
}

class _DrugTestTableState extends State<DrugTestTable> {




  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: MyAppBar(title: Text("Select Drug Test Table",style: TextStyle(color: Colors.black)), appBar: AppBar(),),

        drawer: CustomDrawer(),


        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          //
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

          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [


                    ResponsiveBuilder(builder: (context, sizingInformation)=>DataTable(
                      columnSpacing:  0.24154 * SizeConfig.widthMultiplier,
                      columns: <DataColumn> [

                        DataColumn(

                          numeric: false,
                          label: Padding(
                            //50
                            padding: EdgeInsets.only(right:12.0772 * SizeConfig.widthMultiplier),
                            child: Container(
                              //100
                              width: 29.55458 * SizeConfig.widthMultiplier,
                              child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("URINE TEST",
                                  style: TextStyle(
                                      fontSize: 1.652  * SizeConfig.textMultiplier,
                                      fontFamily:"Poppins",
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)
                              ),),
                            ),
                          ),
                        ),
                        DataColumn(
                          numeric: false,
                          label: Container(
                            //100
                            width: 24.15458 * SizeConfig.widthMultiplier,
                            child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("PRICE",
                                style: TextStyle(
                                    fontSize:1.652  * SizeConfig.textMultiplier,
                                    fontFamily:"Poppins",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),),
                          ),
                        ),
                        DataColumn(
                          numeric: false,
                          label: Container(
                            //100
                            width: 24.15458 * SizeConfig.widthMultiplier,
                            child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("ADD TO CART",
                                style: TextStyle(
                                    fontSize: 1.652 * SizeConfig.textMultiplier,
                                    fontFamily:"Poppins",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),),
                          ),
                        )

                      ],
                      rows: <DataRow>[
                        DataRow(
                            cells: <DataCell>[
                              DataCell(
                                Tooltip(
                                  message: "DOT Drug Panel(CDL Drivers)",
                                  child: Text("DOT Drug Panel(CDL Drivers)",
                                      style: TextStyle(
                                      fontSize: 1.452  * SizeConfig.textMultiplier,
                                      fontFamily:"Poppins",
                                      color: Colors.black,)),
                                ),




                              ),
                              DataCell(
                                  Text("\$75.00",
                                      style: TextStyle(
                                          fontSize: 1.452  * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,))
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )

                            ]
                        ),
                        DataRow(

                            cells: <DataCell>[
                              DataCell(
                                Tooltip(
                                    message: "5 Panel",
                                    child: Text("5 Panel",
                                        style: TextStyle(
                                            fontSize: 1.652 * SizeConfig.textMultiplier,
                                            fontFamily:"Poppins",
                                            color: Colors.black,)

                                    )
                                ),

                              ),

                              DataCell(
                                  Text("\$60.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,)
                              )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )



                            ]
                        ),
                        DataRow(

                            cells: <DataCell>[
                              DataCell(
                                  Tooltip(
                                      message: "7 Panel",
                                      child: Text("7 Panel ",
                                          style: TextStyle(
                                              fontSize: 1.652 * SizeConfig.textMultiplier,
                                              fontFamily:"Poppins",
                                              color: Colors.black,)

                                  )
                              )
                              ),
                              DataCell(
                                  Text("\$65.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,)

                                  )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )


                            ]
                        ),
                        DataRow(

                            selected: true,
                            cells: <DataCell>[
                              DataCell(
                                  Tooltip(
                                      message: "9 Panel",
                                      child: Text("9 Panel",
                                          style: TextStyle(
                                              fontSize: 1.652 * SizeConfig.textMultiplier,
                                              fontFamily:"Poppins",
                                              color: Colors.black,
                                             )


                                      )


                                  )
                              ),
                              DataCell(
                                  Text("\$70.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                         )



                                  )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )



                            ]
                        ),
                        DataRow(

                            cells: <DataCell>[
                              DataCell(
                                  Tooltip(
                                      message: "10 Panel",
                                      child: Text("10 Panel",
                                          style: TextStyle(
                                              fontSize: 1.652 * SizeConfig.textMultiplier,
                                              fontFamily:"Poppins",
                                              color: Colors.black,
                                            )
                                      )
                                  )
                              ),
                              DataCell(
                                  Text("\$75.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                        )
                                  )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )



                            ]
                        ),
                        DataRow(

                            cells: <DataCell>[
                              DataCell(
                                  Tooltip(
                                      message: "5 Panel+ Exp Opiates Oxy, MDMA" ,
                                      child: Text("5 Panel+ Exp Opiates Oxy, MDMA",
                                          style: TextStyle(
                                              fontSize: 1.652 * SizeConfig.textMultiplier,
                                              fontFamily:"Poppins",
                                              color: Colors.black,
                                             )
                                      )
                                  )
                              ),
                              DataCell(
                                  Text("\$80.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                         )

                                  )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )


                            ]
                        ),
                        DataRow(
                            cells: <DataCell>[
                              DataCell(
                                  Tooltip(
                                      message: "7 Panel+ Exp Opiates, Oxy, MDMA",
                                      child: Text("7 Panel+ Exp Opiates, Oxy, MDMA",
                                          style: TextStyle(
                                              fontSize: 1.652 * SizeConfig.textMultiplier,
                                              fontFamily:"Poppins",
                                              color: Colors.black,
                                              )
                                      ))
                              ),
                              DataCell(
                                  Text("\$85.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                         )
                                  )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )


                            ]
                        ),
                        DataRow(

                            cells: <DataCell>[
                              DataCell(
                                  Tooltip(
                                      message:"9 Panel+ Exp Opiates, Oxy, MDMA" ,
                                      child: Text("9 Panel+ Exp Opiates, Oxy, MDMA",
                                        style: TextStyle(
                                            fontSize: 1.652 * SizeConfig.textMultiplier,
                                            fontFamily:"Poppins",
                                            color: Colors.black,
                                          )
                                        ,))
                              ),
                              DataCell(
                                  Text("\$95.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                     )
                                  )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )


                            ]
                        ),
                        DataRow(
                            cells: <DataCell>[
                              DataCell(
                                  Tooltip(
                                      message: "10 Panel+ Exp Opiates, Oxy, MDMA",
                                      child: Text("10 Panel+ Exp Opiates, Oxy, MDMA",
                                          style: TextStyle(
                                              fontSize: 1.652 * SizeConfig.textMultiplier,
                                              fontFamily:"Poppins",
                                              color: Colors.black,
                                             )
                                      )
                                  )
                              ),
                              DataCell(
                                  Text("\$105.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                         )
                                  )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )


                            ]
                        )

                      ],
                    ),),


                    Padding(
                        padding: EdgeInsets.only(top: 2.23214 * SizeConfig.heightMultiplier, left:4.8309 * SizeConfig.widthMultiplier, right:4.8309 * SizeConfig.widthMultiplier),
                      child: Divider(color: Colors.white, thickness: 2,),
                    ),

                    ResponsiveBuilder(builder: (context, sizingInformation)=>DataTable(
                      columnSpacing:  0.24154 * SizeConfig.widthMultiplier,
                      columns: <DataColumn> [

                        DataColumn(

                          numeric: false,
                          label: Padding(
                            //50
                            padding: EdgeInsets.only(right:12.0772 * SizeConfig.widthMultiplier),
                            child: Container(
                              //100
                              width: 29.55458 * SizeConfig.widthMultiplier,
                              child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("HAIR TEST",
                                  style: TextStyle(
                                      fontSize: 1.652  * SizeConfig.textMultiplier,
                                      fontFamily:"Poppins",
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)
                              ),),
                            ),
                          ),
                        ),
                        DataColumn(
                          numeric: false,
                          label: Container(
                            //100
                            width: 24.15458 * SizeConfig.widthMultiplier,
                            child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("PRICE",
                                style: TextStyle(
                                    fontSize:1.652  * SizeConfig.textMultiplier,
                                    fontFamily:"Poppins",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),),
                          ),
                        ),
                        DataColumn(
                          numeric: false,
                          label: Container(
                            //100
                            width: 24.15458 * SizeConfig.widthMultiplier,
                            child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("ADD TO CART",
                                style: TextStyle(
                                    fontSize: 1.652 * SizeConfig.textMultiplier,
                                    fontFamily:"Poppins",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),),
                          ),
                        )

                      ],
                      rows: <DataRow>[
                        DataRow(
                            cells: <DataCell>[
                              DataCell(
                                Tooltip(
                                  message: "5 Panel",
                                  child: Text("5 Panel",
                                      style: TextStyle(
                                          fontSize: 1.452  * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                        )),
                                ),




                              ),
                              DataCell(
                                  Text("\$140.00",
                                      style: TextStyle(
                                          fontSize: 1.452  * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                      ))
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )

                            ]
                        ),
                        DataRow(

                            cells: <DataCell>[
                              DataCell(
                                Tooltip(
                                    message: "5 Panel + exp Opiates",
                                    child: Text("5 Panel + exp Opiates",
                                        style: TextStyle(
                                            fontSize: 1.652 * SizeConfig.textMultiplier,
                                            fontFamily:"Poppins",
                                            color: Colors.black,
                                            )

                                    )
                                ),

                              ),

                              DataCell(
                                  Text("\$150.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                          )
                                  )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )



                            ]
                        ),


                      ],
                    ),),
                    Padding(
                      padding: EdgeInsets.only(top: 2.23214 * SizeConfig.heightMultiplier, left:4.8309 * SizeConfig.widthMultiplier, right:4.8309 * SizeConfig.widthMultiplier),
                      child: Divider(color: Colors.black, thickness: 2,),
                    ),

                    ResponsiveBuilder(builder: (context, sizingInformation)=>DataTable(
                      columnSpacing:  0.24154 * SizeConfig.widthMultiplier,
                      columns: <DataColumn> [

                        DataColumn(

                          numeric: false,
                          label: Padding(
                            //50
                            padding: EdgeInsets.only(right:12.0772 * SizeConfig.widthMultiplier),
                            child: Container(
                              //100
                              width: 29.55458 * SizeConfig.widthMultiplier,
                              child: ResponsiveBuilder(builder: (context, sizingInformation)=>Tooltip(
                                message: "DRUG & ALCOHOL",
                                child: Text("DRUG & ALCOHOL",
                                    style: TextStyle(
                                        fontSize: 1.652  * SizeConfig.textMultiplier,
                                        fontFamily:"Poppins",
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)
                                ),
                              ),),
                            ),
                          ),
                        ),
                        DataColumn(
                          numeric: false,
                          label: Container(
                            //100
                            width: 24.15458 * SizeConfig.widthMultiplier,
                            child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("PRICE",
                                style: TextStyle(
                                    fontSize:1.652  * SizeConfig.textMultiplier,
                                    fontFamily:"Poppins",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),),
                          ),
                        ),
                        DataColumn(
                          numeric: false,
                          label: Container(
                            //100
                            width: 24.15458 * SizeConfig.widthMultiplier,
                            child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("ADD TO CART",
                                style: TextStyle(
                                    fontSize: 1.652 * SizeConfig.textMultiplier,
                                    fontFamily:"Poppins",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)
                            ),),
                          ),
                        )

                      ],
                      rows: <DataRow>[
                        DataRow(
                            cells: <DataCell>[
                              DataCell(
                                Tooltip(
                                  message: "DOT Drug + Alcohol CDL Drivers",
                                  child: Text("DOT Drug + Alcohol CDL Drivers",
                                      style: TextStyle(
                                          fontSize: 1.452  * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                          )),
                                ),




                              ),
                              DataCell(
                                  Text("\$150.00",
                                      style: TextStyle(
                                          fontSize: 1.452  * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                        ))
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )

                            ]
                        ),
                        DataRow(

                            cells: <DataCell>[
                              DataCell(
                                Tooltip(
                                    message: "10 Panel Drug & Alcohol Test",
                                    child: Text("10 Panel Drug & Alcohol Test",
                                        style: TextStyle(
                                            fontSize: 1.652 * SizeConfig.textMultiplier,
                                            fontFamily:"Poppins",
                                            color: Colors.black,
                                           )

                                    )
                                ),

                              ),

                              DataCell(
                                  Text("\$150.00",
                                      style: TextStyle(
                                          fontSize: 1.652 * SizeConfig.textMultiplier,
                                          fontFamily:"Poppins",
                                          color: Colors.black,
                                       )
                                  )
                              ),
                              DataCell(
                                  Container(
                                    //80
                                    width: 19.3236 * SizeConfig.widthMultiplier,
                                    //40
                                    height: 4.4642 * SizeConfig.heightMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Add", style: TextStyle(color: Colors.white),), ),
                                  )
                              )



                            ]
                        ),


                      ],
                    ),),


                    CustomBtn(
                      onPressed: (){
                            showDialog(context: context, builder: (context){
                              return Container(
                                padding: EdgeInsets.only( top: 20.32142 * SizeConfig.heightMultiplier, bottom:13.32142 * SizeConfig.heightMultiplier,left: 20, right: 20),
                                child: AlertDialog(

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  title: Text("PLEASE CHOOSE", textAlign: TextAlign.center,),
                                  content: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomBtn(text: "D.O.T", onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DotRegistration()));},),
                                      CustomBtn(text: "Non D.O.T",onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NonDotRegistration()));},)
                                    ],
                                  ),
                                  actions: [
                                    FlatButton(
                                        onPressed: (){Navigator.pop(context);},
                                        child: Text("Close"))
                                  ],
                                ),
                              );
                            }
                            );
                      },
                      text: "Proceed to registration",
                    ),





                  ],

                ),

              ],
            ),
          ),




        ),






      );
    },);

  }
}
