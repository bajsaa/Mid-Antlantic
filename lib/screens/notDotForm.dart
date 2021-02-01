

import 'package:flutter/material.dart';
import 'package:mid_antlantic/models/non_dot_form_model.dart';
import 'package:mid_antlantic/screens/FindLocation.dart';
import 'package:mid_antlantic/screens/profileScreen.dart';
import 'package:mid_antlantic/utils/api.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:http/http.dart' as http;
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:convert';
import '../constants.dart';
import '../size_config.dart';

class NonDotFormScreen extends StatefulWidget{




  @override
  _NonDotFormScreenState createState() => _NonDotFormScreenState();
}

class _NonDotFormScreenState extends State<NonDotFormScreen> with ChangeNotifier{
  final ConstantColors constantColors = ConstantColors();
  var formKey = GlobalKey<FormState>();
  Future<NonDotFormModel> _futureNonDotModel;


  void validate(){
    if(formKey.currentState.validate()){
      print("validated");
    }else{
      print("not validated");
    }
  }



  var mainUrl = Api.authUrl;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController donorMailController = TextEditingController();
  TextEditingController testResultMailController = TextEditingController();
  TextEditingController ssController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController observationController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();

  List reasonDataList = List();

  String _reasonItemVal;

  Map reasonData;

  Future getReason() async {
    var response = await http.get("$mainUrl/apis/get-non-dot-reason-list");
    reasonData = jsonDecode(response.body);
    setState(() {
      reasonDataList = reasonData["data"];
    });
  }

  @override
  void initState() {
    getReason();
    super.initState();
  }

  void addDataLocal() async {
    var url = "$mainUrl/apis/save-non-dot-data";
    var res = await http
        .post(url,
            body: jsonEncode({
              "client_id": "1",
              "test_id": "1",
              "first_name": firstNameController.text,
              "last_name": lastNameController.text,
              "phone_no": phoneNoController.text,
              "doner_email": donorMailController.text,
              "test_result": testResultMailController.text,
              "ss_no": ssController.text,
              "dob": dobController.text,
              "agency_id": "NOT APPLICABLE",
              "reason_id": _reasonItemVal,
              "observation": observationController.text,
              "comment": commentController.text,
              "zip_code": zipCodeController.text
            }));
    print(res.body);
  }

  Future<NonDotFormModel> addDataClient() async {
    var url = "https://demo.i3screen.net/api/scheduling/create";
    var res = await http.post(
      url,
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization':
            'Basic bWlkYXRsYW50aWNvcmRlcjpqWGZkN3VXRFpORDJHYVBUN002TQ=='
      },
      body: jsonEncode(
          {
            "org_id": "507053",
            "location_code": "114798",
            "package_code": "MA5PUNON",
            "order_reference_number": "12345789abc",
            "participant_government_id": ssController.text,
            "order_reason": _reasonItemVal,
            "participant_first_name": firstNameController.text,
            "participant_last_name": lastNameController.text,
            "participant_phone": phoneNoController.text,
            "participant_email": donorMailController.text,
            "participant_postal_code": zipCodeController.text,
            "participant_region": "CO",
            "participant_municipality": "Denver",
            "participant_address": "9501 Northfield Blvd",
            "participant_dob": dobController.text,
            "expiration_date_time": "2019-12-31 23:59:59",
            "dot_agency": "NOT APPLICABLE",
            "report_message": commentController.text,
            "lab_location_code": "123456abc"
          }
      )
    );
    print(res.body);
    if(res.statusCode == 201){
      return NonDotFormModel.fromJson(jsonDecode(res.body));
    }else{
      throw Exception('Failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: constantColors.whiteColor,
        title: Text("Non D.O.T", style: Constants.boldheading),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: ProfileScreen(),
                      type: PageTransitionType.rightToLeft));
            },
          )
        ],
      ),
      drawer: CustomDrawer(),

      body: SingleChildScrollView(
        child: Column(

            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      Image.asset("assets/images/lock.png"),
                      Text(
                        "Secure & Private",
                        style: Constants.regularDarkText,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.all(2.0089 * SizeConfig.heightMultiplier),
                  child: Text(
                    " This is an effective test to Identify drug use and discourage consumption of illicit substances.",
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
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
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
                            hintStyle: TextStyle(color: Colors.black38),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    //todo: last name
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
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
                            hintStyle: TextStyle(color: Colors.black38),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    //todo: phone
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: phoneNoController,
                        validator: (val){
                          String pattern =r'\u0027/^\\d{10}$/\u0027';
                          RegExp regExp = new RegExp(pattern);
                          if(val.isEmpty || !regExp.hasMatch(val)){
                            return "";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: "Phone",
                            hintStyle: TextStyle(color: Colors.black38),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    //todo: donor mail
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
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
                            hintStyle: TextStyle(color: Colors.black38),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    //todo:test result sent to main
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
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
                            hintStyle: TextStyle(color: Colors.black38),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    //todo: SS#
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: ssController,
                        // validator: (val){
                        //   if(val.isEmpty || !val.contains("@")){
                        //     return "Wrong Email";
                        //   }else{
                        //     return null;
                        //   }
                        // },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "SS#",
                            hintStyle: TextStyle(color: Colors.black38),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: dobController,
                        validator: (val){
                          String pattern = r'\u0027/^(19|20|21)\\d{2}-(0[1-9]|1[012])-';
                          RegExp regExp = new RegExp(pattern);
                          if(val.isEmpty || !regExp.hasMatch(val)){
                            return "";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            hintText: "DOB",
                            hintStyle: TextStyle(color: Colors.black38),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),

                    Container(
                      height: 60.0,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(50.0)),
                      margin: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 10.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 10),
                          child: DropdownButton(
                              isExpanded: true,
                              iconSize: 30,
                              hint: Text(
                                "Reason",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5)),
                              ),
                              dropdownColor: Colors.white,
                              style: TextStyle(color: Colors.black),
                              value: _reasonItemVal,
                              onChanged: (value) {
                                setState(() {
                                  _reasonItemVal = value;
                                });
                              },
                              items: reasonDataList.map((item) {
                                return DropdownMenuItem(
                                    value: item['id'].toString(),
                                    child: Text(
                                      item["name"],
                                      style: TextStyle(fontSize: 16),
                                    ));
                              }).toList()),
                        ),
                      ),
                    ),

                    //Todo: observation
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
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
                            hintStyle: TextStyle(color: Colors.black38),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    //Todo: comment box
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
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
                            hintStyle: TextStyle(color: Colors.black38),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    //Todo: zip code
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 6.111 * SizeConfig.widthMultiplier,
                          vertical: 1 * SizeConfig.heightMultiplier),
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
                            hintStyle: TextStyle(color: Colors.black38),
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
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 1.273 * SizeConfig.widthMultiplier,
                                    right: 1.273 * SizeConfig.widthMultiplier,
                                    top: 1.5 * SizeConfig.heightMultiplier,
                                    bottom: 1.5 * SizeConfig.heightMultiplier),
                                width: 36.231 * SizeConfig.widthMultiplier,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.black),
                                child: Center(
                                  child: Text(
                                    "PREVIOUS",
                                    style: TextStyle(
                                      //16
                                      fontSize:
                                          1.7857 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3.9511 * SizeConfig.widthMultiplier,
                            ),
                            GestureDetector(
                              onTap: () async{
                                addDataLocal();

                                setState(() {
                                  _futureNonDotModel = addDataClient().whenComplete(() => Navigator.push(context, PageTransition(child: FindLocation(), type: PageTransitionType.rightToLeft)));
                                });


                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 1.273 * SizeConfig.widthMultiplier,
                                    right: 1.273 * SizeConfig.widthMultiplier,
                                    top: 1.5 * SizeConfig.heightMultiplier,
                                    bottom: 1.5 * SizeConfig.heightMultiplier),
                                width: 36.231 * SizeConfig.widthMultiplier,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.black),
                                child: Center(
                                  child: Text(
                                    "SELECT A LAB",
                                    style: TextStyle(
                                      //16
                                      fontSize:
                                          1.7857 * SizeConfig.textMultiplier,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
      ),

      //bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}
