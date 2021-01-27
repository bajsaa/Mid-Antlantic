import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mid_antlantic/main.dart';
import 'package:mid_antlantic/screens/FindLocation.dart';
import 'package:mid_antlantic/screens/TestListScreen.dart';
import 'package:mid_antlantic/screens/profileScreen.dart';
import 'package:mid_antlantic/screens/test_history.dart';
import 'package:mid_antlantic/utils/api.dart';
import 'package:mid_antlantic/widgets/colors.dart';

import 'package:mid_antlantic/widgets/custom_dropdown_Reason.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_dot_agency.dart';
import 'package:page_transition/page_transition.dart';

import 'package:http/http.dart' as http;
import '../constants.dart';
import '../size_config.dart';




class DotFormHelpers with ChangeNotifier{
  final ConstantColors constantColors = ConstantColors();
  var formKey = GlobalKey<FormState>();
  var mainUrl = Api.authUrl;


  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController donorMailController = TextEditingController();
  TextEditingController testResultMailController = TextEditingController();
  TextEditingController driverLicenseController = TextEditingController();
  TextEditingController driverLicenseStateController = TextEditingController();
  TextEditingController driverLicenseCountryController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController observationController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();


  void addData() async{
    var url = "$mainUrl/apis/save-dot-data";
      var res =  await http.post(url,body: jsonEncode({
      "first_name":firstNameController.text,
      "last_name":lastNameController.text,
      "phone_no":phoneNoController.text,
      "doner_email":donorMailController.text,
      "test_result":testResultMailController.text,
      "driver_license":driverLicenseController.text,
      "driver_license_state":driverLicenseStateController.text,
      "driver_license_country":driverLicenseCountryController.text,
      "dob":dobController.text,
      "agency_id":"1",
      "reason_id":"1",
      "observation":observationController.text,
      "comment":commentController.text,
      "zip_code":zipCodeController.text
    }));
    print(res.body);
  }







  Widget dotAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: constantColors.whiteColor,
      title: Text("D.O.T", style: Constants.boldheading),
      actions: [
        IconButton(
          icon: Icon(Icons.person),
          color: Colors.black,
          onPressed: (){
              Navigator.push(context, PageTransition(child: ProfileScreen(), type: PageTransitionType.rightToLeft));
        }, )
      ],
    );
  }

  Widget dotFormBody(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(height: 20,
              child: Row(
                children: [
                  Image.asset("assets/images/lock.png"),
                  Text("Secure & Private", style: Constants.regularDarkText,)
                ],
              ),),
            ),
            
            Container(
              child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(2.0089 * SizeConfig.heightMultiplier),
                    child: Text(
                      " This is a required drug test panel for any Corporations or individuals, that is under the authority of the Department of Transportation (DOT) . All the information below is require.",
                      style: TextStyle(
                        fontSize: 2.23214 * SizeConfig.textMultiplier,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),

            Form(
              key: formKey,
              child: Column(
                children: [

                  //todo: first name
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: firstNameController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "First Name",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  //todo: last name
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: lastNameController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Last Name",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  //todo: phone
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: phoneNoController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "Phone",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  //todo: donor mail
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: donorMailController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Donor Mail",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  //todo:test result sent to main
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: testResultMailController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Test result sent to mail",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  //todo: divider
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Divider(color: Colors.black,),
                  ),

                  //Todo: driver license
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: driverLicenseController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Driver license #",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  //Todo: driver license state issues
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: driverLicenseStateController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Driver license state issues",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  //Todo: driver license country
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: driverLicenseCountryController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Driver licence country",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),


                  //todo: divider
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Divider(color: Colors.black,),
                  ),
                  //todo:dob
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: dobController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          hintText: "DOB",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  DropDownDotAgency(),
                  DropDownReason(),



                  //Todo: observation
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: observationController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Observation Y/N",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),



                  //Todo: comment box
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 6.111 * SizeConfig.widthMultiplier,
                        vertical: 1 * SizeConfig.heightMultiplier
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      maxLines: 5,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: commentController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Message/ Comment",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),

                  //Todo: zip code
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: zipCodeController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Zip Code",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator
                                  .of(context)
                                  .pop();
                            },
                            child: Container(
                              padding: EdgeInsets.only(left: 1.273 * SizeConfig.widthMultiplier, right: 1.273 * SizeConfig.widthMultiplier, top: 1.5 * SizeConfig.heightMultiplier, bottom: 1.5 * SizeConfig.heightMultiplier),
                              width: 36.231 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black
                              ),
                              child: Center(
                                child: Text("PREVIOUS", style:TextStyle(
                                  //16
                                  fontSize: 1.7857 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 3.9511 * SizeConfig.widthMultiplier,),
                          GestureDetector(
                            onTap: (){
                              addData();
                              Navigator
                                  .of(context)
                                  .push(MaterialPageRoute(builder: (context)=> FindLocation() )
                              );
                            },
                            child:Container(
                              padding: EdgeInsets.only(left: 1.273 * SizeConfig.widthMultiplier, right: 1.273 * SizeConfig.widthMultiplier, top: 1.5 * SizeConfig.heightMultiplier, bottom: 1.5 * SizeConfig.heightMultiplier),
                              width:36.231 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black
                              ),
                              child: Center(
                                child: Text("SELECT A LAB", style:TextStyle(
                                  //16
                                  fontSize: 1.7857 * SizeConfig.textMultiplier,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                ),
                              ) ,
                            ),
                          )
                        ],
                      ),
                    ),
                  )





                ],
              ),
            )
          ]),
    );
  }


  Widget dotFormBottomNavBar(BuildContext context){


    return BottomNavigationBar(
        type : BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedLabelStyle: TextStyle( fontSize: 16, color: Colors.black),
        selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black) ,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestListScreen()));
                  },
                  child: Image.asset("assets/images/testblack.png", height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Test"
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FindLocation()));
                },
                child: Image.asset("assets/images/locationblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
            label: "Location",

          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestHistory()));
                  },
                  child: Image.asset("assets/images/orderblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Order"
          ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: (){},
                  child: Image.asset("assets/images/profileblack.png",  height:4.46428 * SizeConfig.heightMultiplier, width: 9.66183 * SizeConfig.widthMultiplier)),
              label: "Profile"
          ),
        ]
    );


  }





}



