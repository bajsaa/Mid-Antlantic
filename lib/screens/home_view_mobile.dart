import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../constants.dart';


class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        appBar: MyAppBar(),

        drawer: CustomDrawer(),


        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(

              gradient: LinearGradient(
                  colors: [

                    Color(0XFF3D9798),
                    Color(0XFF2E7FC0)],

                  begin: Alignment(0,0),
                  end: Alignment(0,1)
              )
          ),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: ResponsiveBuilder(builder: (context, sizingInformation)=>Icon(Icons.keyboard_arrow_left_sharp, color: Colors.white,),)

                      ),

                      SizedBox(width: 20),
                      ResponsiveBuilder(builder: (context, sizingInformation)=>Text("Select a Drug Test", style: Constants.boldheading,),)
                    ],
                  ),
                ),

                ResponsiveBuilder(builder: (context, sizingInformation)=>DataTable(
                  columnSpacing:  1,
                  columns: <DataColumn> [

                    DataColumn(

                      numeric: false,
                      label: Padding(
                        padding: EdgeInsets.only(right:50 ),
                        child: Container(
                          width: 100,
                          child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("URINE TEST",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily:"Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)
                          ),),
                        ),
                      ),
                    ),
                    DataColumn(
                      numeric: false,
                      label: Container(
                        width: 100,
                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("PRICE",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily:"Poppins",
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                        ),),
                      ),
                    ),
                    DataColumn(
                      numeric: false,
                      label: Container(
                        width: 100,
                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("ADD TO CART",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily:"Poppins",
                                color: Colors.white,
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
                              child: Text("DOT Drug Panel(CDL Drivers)", style: Constants.regularDarkText,),
                            ),




                          ),
                          DataCell(
                              Text("\$75.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )

                        ]
                    ),
                    DataRow(

                        cells: <DataCell>[
                          DataCell(
                            Tooltip(
                                message: "5 Panel",
                                child: Text("5 Panel", style: Constants.regularDarkText,)),

                          ),

                          DataCell(
                              Text("\$60.00",style: Constants.regularDarkText,)),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40 ,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )



                        ]
                    ),
                    DataRow(

                        cells: <DataCell>[
                          DataCell(
                              Tooltip(
                                  message: "7 Panel",
                                  child: Text("7 Panel ", style: Constants.regularDarkText,))
                          ),
                          DataCell(
                              Text("\$65.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
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
                                  child: Text("9 Panel", style: Constants.regularDarkText,))
                          ),
                          DataCell(
                              Text("\$70.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,

                                height: 40 ,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )



                        ]
                    ),
                    DataRow(

                        cells: <DataCell>[
                          DataCell(
                              Tooltip(
                                  message: "10 Panel",
                                  child: Text("10 Panel", style: Constants.regularDarkText,))
                          ),
                          DataCell(
                              Text("\$75.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,

                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )



                        ]
                    ),
                    DataRow(

                        cells: <DataCell>[
                          DataCell(
                              Tooltip(
                                  message: "5 Panel+ Exp Opiates Oxy, MDMA" ,
                                  child: Text("5 Panel+ Exp Opiates Oxy, MDMA", style: Constants.regularDarkText,))
                          ),
                          DataCell(
                              Text("\$80.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )


                        ]
                    ),
                    DataRow(
                        cells: <DataCell>[
                          DataCell(
                              Tooltip(
                                  message: "7 Panel+ Exp Opiates, Oxy, MDMA",
                                  child: Text("7 Panel+ Exp Opiates, Oxy, MDMA", style: Constants.regularDarkText,))
                          ),
                          DataCell(
                              Text("\$85.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40 ,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )


                        ]
                    ),
                    DataRow(

                        cells: <DataCell>[
                          DataCell(
                              Tooltip(
                                  message:"9 Panel+ Exp Opiates, Oxy, MDMA" ,
                                  child: Text("9 Panel+ Exp Opiates, Oxy, MDMA", style: Constants.regularDarkText,))
                          ),
                          DataCell(
                              Text("\$95.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,
                                height:40 ,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )


                        ]
                    ),
                    DataRow(
                        cells: <DataCell>[
                          DataCell(
                              Tooltip(
                                  message: "10 Panel+ Exp Opiates, Oxy, MDMA",
                                  child: Text("10 Panel+ Exp Opiates, Oxy, MDMA", style: Constants.regularDarkText,)
                              )
                          ),
                          DataCell(
                              Text("\$105.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40 ,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )


                        ]
                    )

                  ],
                ),),

                ResponsiveBuilder(builder: (context, sizingInformation)=>DataTable(
                  columnSpacing:  1,
                  columns: <DataColumn> [

                    DataColumn(

                      numeric: false,
                      label: Padding(
                        padding: EdgeInsets.only(right:50 ),
                        child: Container(
                          width: 100,
                          child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("HAIR TEST",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily:"Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)
                          ),),
                        ),
                      ),
                    ),
                    DataColumn(
                      numeric: false,
                      label: Container(
                        width: 100,
                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("PRICE",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily:"Poppins",
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                        ),),
                      ),
                    ),
                    DataColumn(
                      numeric: false,
                      label: Container(
                        width: 100,
                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("ADD TO CART",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily:"Poppins",
                                color: Colors.white,
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
                              child: Text("5 Panel", style: Constants.regularDarkText,),
                            ),




                          ),
                          DataCell(
                              Text("\$140.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )

                        ]
                    ),
                    DataRow(

                        cells: <DataCell>[
                          DataCell(
                            Tooltip(
                                message: "5 Panel + exp Opiates",
                                child: Text("5 Panel + exp Opiates", style: Constants.regularDarkText,)),

                          ),

                          DataCell(
                              Text("\$150.00",style: Constants.regularDarkText,)),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40 ,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )



                        ]
                    ),


                  ],
                ),),

                ResponsiveBuilder(builder: (context, sizingInformation)=>DataTable(
                  columnSpacing:  1,
                  columns: <DataColumn> [

                    DataColumn(

                      numeric: false,
                      label: Padding(
                        padding: EdgeInsets.only(right:50 ),
                        child: Container(
                          width: 100,
                          child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("DRUG AND ALCOHOL",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily:"Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)
                          ),),
                        ),
                      ),
                    ),
                    DataColumn(
                      numeric: false,
                      label: Container(
                        width: 100,
                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("PRICE",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily:"Poppins",
                                color: Colors.white,
                                fontWeight: FontWeight.bold)
                        ),),
                      ),
                    ),
                    DataColumn(
                      numeric: false,
                      label: Container(
                        width: 100,
                        child: ResponsiveBuilder(builder: (context, sizingInformation)=>Text("ADD TO CART",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily:"Poppins",
                                color: Colors.white,
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
                              message: "DOT Drug + Alchol  CDL Drivers)",
                              child: Text("DOT Drug + Alchol  CDL Drivers)", style: Constants.regularDarkText,),
                            ),




                          ),
                          DataCell(
                              Text("\$150.00", style: Constants.regularDarkText,)
                          ),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )

                        ]
                    ),
                    DataRow(

                        cells: <DataCell>[
                          DataCell(
                            Tooltip(
                                message: "10 Panel Drug & Alchol Test",
                                child: Text("10 Panel Drug & Alchol Test", style: Constants.regularDarkText,)),

                          ),

                          DataCell(
                              Text("\$150.00",style: Constants.regularDarkText,)),
                          DataCell(
                              Container(
                                width: 80,
                                height: 40 ,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text("Add"), ),
                              )
                          )



                        ]
                    ),


                  ],
                ),),



                //
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Divider(color: Colors.white, thickness: 3,),
                // ),
                //
                // SafeArea(
                //   child: DataTable(
                //     sortAscending: true,
                //     columnSpacing:  0.0640 * SizeConfig.widthMultiplier,
                //
                //     columns: <DataColumn> [
                //
                //       DataColumn(
                //
                //         numeric: false,
                //         label: Padding(
                //           padding: const EdgeInsets.only(right:50 ),
                //           child: Container(
                //             width: 25.462 * SizeConfig.widthMultiplier,
                //             child: Text("HAIR TEST",
                //                 style: TextStyle(
                //                     fontSize: 1.9203 * SizeConfig.textMultiplier,
                //                     fontFamily:"Poppins",
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.bold)
                //             ),
                //           ),
                //         ),
                //       ),
                //       DataColumn(
                //         numeric: false,
                //         label: Container(
                //           width: 25.462 * SizeConfig.widthMultiplier,
                //           child: Text("PRICE",
                //               style: TextStyle(
                //                   fontSize: 1.9203 * SizeConfig.textMultiplier,
                //                   fontFamily:"Poppins",
                //                   color: Colors.white,
                //                   fontWeight: FontWeight.bold)
                //           ),
                //         ),
                //       ),
                //       DataColumn(
                //         numeric: false,
                //         label: Container(
                //           width: 25.462 * SizeConfig.widthMultiplier,
                //           child: Text("ADD TO CART",
                //               style: TextStyle(
                //                   fontSize: 1.9203 * SizeConfig.textMultiplier,
                //                   fontFamily:"Poppins",
                //                   color: Colors.white,
                //                   fontWeight: FontWeight.bold)
                //           ),
                //         ),
                //       )
                //
                //
                //
                //     ],
                //     rows: <DataRow>[
                //       DataRow(
                //           cells: <DataCell>[
                //             DataCell(
                //               Tooltip(
                //                 message: "5 Panel",
                //                 child: Text("5 Panel", style: Constants.regularDarkText,),
                //               ),
                //
                //             ),
                //             DataCell(
                //                 Text("\$140.00", style: Constants.regularDarkText,)
                //             ),
                //             DataCell(
                //                 Container(
                //                   width: 25.462 * SizeConfig.widthMultiplier,
                //                   height: 5.18518 * SizeConfig.heightMultiplier ,
                //                   decoration: BoxDecoration(
                //                       color: Colors.white,
                //                       borderRadius: BorderRadius.circular(20)
                //                   ),
                //                   child: Center(child: Text("Add"), ),
                //                 )
                //             )
                //
                //           ]
                //       ),
                //       DataRow(
                //
                //           cells: <DataCell>[
                //             DataCell(
                //                 Tooltip(
                //                     message: "5 Panel + Exp Opiates",
                //                     child: Text("5 Panel + Exp Opiates", style: Constants.regularDarkText,))),
                //
                //             DataCell(
                //                 Text("\$150.00",style: Constants.regularDarkText,)),
                //             DataCell(
                //                 Container(
                //                   width: 25.462 * SizeConfig.widthMultiplier,
                //
                //                   height: 5.18518 * SizeConfig.heightMultiplier ,
                //                   decoration: BoxDecoration(
                //                       color: Colors.white,
                //                       borderRadius: BorderRadius.circular(20)
                //                   ),
                //                   child: Center(child: Text("Add"), ),
                //                 )
                //             )
                //
                //
                //
                //           ]
                //       ),
                //
                //
                //     ],
                //   ),
                // ),
                //
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Divider(color: Colors.white, thickness: 3,),
                // ),
                //
                // SafeArea(
                //   child: DataTable(
                //     sortAscending: true,
                //     columnSpacing:  0.0640 * SizeConfig.widthMultiplier,
                //
                //     columns: <DataColumn> [
                //
                //       DataColumn(
                //
                //         numeric: false,
                //         label: Padding(
                //           padding:  EdgeInsets.only(right:12.7314 * SizeConfig.widthMultiplier ),
                //           child: Container(
                //             width: 25.462 * SizeConfig.widthMultiplier,
                //             child: Tooltip(
                //               message: "Drug & Alcohol Only Avail in certain areas",
                //               child: Text("Drug & Alcohol Only Avail in certain areas",
                //                   style: TextStyle(
                //                       fontSize: 1.9203 * SizeConfig.textMultiplier,
                //                       fontFamily:"Poppins",
                //                       color: Colors.white,
                //                       fontWeight: FontWeight.bold)
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       DataColumn(
                //         numeric: false,
                //         label: Container(
                //           width: 25.462 * SizeConfig.widthMultiplier,
                //           child: Text("PRICE",
                //               style: TextStyle(
                //                   fontSize: 1.9203 * SizeConfig.textMultiplier,
                //                   fontFamily:"Poppins",
                //                   color: Colors.white,
                //                   fontWeight: FontWeight.bold)
                //           ),
                //         ),
                //       ),
                //       DataColumn(
                //         numeric: false,
                //         label: Container(
                //           width: 25.462 * SizeConfig.widthMultiplier,
                //           child: Text("ADD TO CART",
                //               style: TextStyle(
                //                   fontSize: 1.9203 * SizeConfig.textMultiplier,
                //
                //                   fontFamily:"Poppins",
                //                   color: Colors.white,
                //                   fontWeight: FontWeight.bold)
                //           ),
                //         ),
                //       )
                //
                //
                //
                //     ],
                //     rows: <DataRow>[
                //       DataRow(
                //           cells: <DataCell>[
                //             DataCell(
                //               Tooltip(
                //                 message: "DOT Drug + Alchol  CDL Drivers)",
                //                 child: Text("DOT Drug + Alchol  CDL Drivers)", style: Constants.regularDarkText,),
                //               ),
                //
                //             ),
                //             DataCell(
                //                 Text("\$150.00", style: Constants.regularDarkText,)
                //             ),
                //             DataCell(
                //                 Container(
                //                   width: 25.462 * SizeConfig.widthMultiplier,
                //                   height: 5.18518 * SizeConfig.heightMultiplier ,
                //                   decoration: BoxDecoration(
                //                       color: Colors.white,
                //                       borderRadius: BorderRadius.circular(20)
                //                   ),
                //                   child: Center(child: Text("Add"), ),
                //                 )
                //             )
                //
                //           ]
                //       ),
                //       DataRow(
                //
                //           cells: <DataCell>[
                //             DataCell(
                //                 Tooltip(
                //                     message: "10 Panel Drug & Alchol Test",
                //                     child: Text("10 Panel Drug & Alchol Test", style: Constants.regularDarkText,))),
                //
                //             DataCell(
                //                 Text("\$150.00",style: Constants.regularDarkText,)),
                //             DataCell(
                //                 Container(
                //                   width: 25.462 * SizeConfig.widthMultiplier,
                //                   height: 10.18518 * SizeConfig.heightMultiplier ,
                //                   decoration: BoxDecoration(
                //                       color: Colors.white,
                //                       borderRadius: BorderRadius.circular(20)
                //                   ),
                //                   child: Center(child: Text("Add"), ),
                //                 )
                //             )
                //
                //
                //
                //           ]
                //       ),
                //
                //
                //     ],
                //   ),
                // ),
                //
                // Padding(
                //   padding: EdgeInsets.only(left:25.462 * SizeConfig.widthMultiplier, right: 25.462 * SizeConfig.widthMultiplier, top: 6.3657 * SizeConfig.heightMultiplier, bottom:6.3657 * SizeConfig.heightMultiplier),
                //   child: Divider(color: Colors.white, thickness: 3,),
                // ),


                CustomBtn(
                  text: "Proceed to registration",
                )





              ],

            ),
          ),


        ),









      );
    },);
    //   Scaffold(
    //   drawer: CustomDrawer(),
    //   key: _scaffoldKey,
    //   body: Column(
    //     children: [
    //       Padding(padding: EdgeInsets.all(16),
    //       child: IconButton(
    //         icon: Icon(Icons.menu, size: 30,),
    //         onPressed: (){
    //           _scaffoldKey.currentState.openDrawer();
    //         },
    //       ),
    //       ),
    //
    //     ],
    //   ),
    // );
  }
}


