import 'dart:convert';
import 'package:mid_antlantic/models/dotFormModel.dart';
import 'package:mid_antlantic/screens/TestListScreen.dart';
import 'package:mid_antlantic/screens/profileScreen.dart';
import 'package:mid_antlantic/utils/api.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_Reason.dart';
import 'package:http/http.dart' as http;
import 'package:mid_antlantic/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../size_config.dart';
import 'FindLocation.dart';

 class DotFormScreen extends StatefulWidget {
   @override
   _DotFormScreenState createState() => _DotFormScreenState();
 }

 class _DotFormScreenState extends State<DotFormScreen> {

   DotFormRequestModel dotFormRequestModel;

   var formKey = GlobalKey<FormState>();


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

   var mainUrl = Api.authUrl;


   List agencyDataList = List();
   List reasonDataList = List();

   String _agencyItemVal;
   String _reasonItemVal;

   Map agencyData;
   Map reasonData;

   @override
   void initState() {
     getAgency();
     getReason();
     super.initState();
   }

   Future getAgency() async{
     var response = await http.get("$mainUrl/apis/get-agencies-list");
     agencyData = json.decode(response.body);
     setState(() {
       agencyDataList = agencyData["data"];
     });

   }

   Future getReason() async{
     var response = await http.get("$mainUrl/apis/get-dot-reason-list");
     reasonData = jsonDecode(response.body);
     setState(() {
       reasonDataList = reasonData["data"];
     });
   }


   void addData() async{
     var url = "$mainUrl/apis/save-dot-data";
     var res =  await http.post(url,body: jsonEncode({
     "client_id":"1",
       "test_id":Provider.of<TestListScreen>(context).,
       "first_name":firstNameController.text,
       "last_name":lastNameController.text,
       "phone_no":phoneNoController.text,
       "doner_email":donorMailController.text,
       "test_result":testResultMailController.text,
       "driver_license":driverLicenseController.text,
       "driver_license_state":driverLicenseStateController.text,
       "driver_license_country":driverLicenseCountryController.text,
       "dob":dobController.text,
       "agency_id":_agencyItemVal,
       "reason_id":_reasonItemVal,
       "observation":observationController.text,
       "comment":commentController.text,
       "zip_code":zipCodeController.text
     }));
     print(res.body);
   }




   @override
   Widget build(BuildContext context) {
     ConstantColors constantColors = ConstantColors();


       return Scaffold(
         appBar: AppBar(
           centerTitle: true,
           backgroundColor: constantColors.whiteColor,
           title: Text("D.O.T", style: Constants.boldheading),
           actions: [
             IconButton(
               icon: Icon(Icons.person),
               color: Colors.black,
               onPressed: () {
                 Navigator.push(context, PageTransition(child: ProfileScreen(),
                     type: PageTransitionType.rightToLeft));
               },)
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
                   child: SizedBox(height: 20,
                     child: Row(
                       children: [
                         Image.asset("assets/images/lock.png"),
                         Text("Secure & Private",
                           style: Constants.regularDarkText,)
                       ],
                     ),),
                 ),

                 Container(
                   child: Center(
                       child: Padding(
                         padding: EdgeInsets.all(
                             2.0089 * SizeConfig.heightMultiplier),
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
                         margin: EdgeInsets.symmetric(
                             horizontal: 6.111 * SizeConfig.widthMultiplier,
                             vertical: 1 * SizeConfig.heightMultiplier),
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(30)),
                         child: TextFormField(
                           onSaved: (input)=>dotFormRequestModel.dot_first_name,
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
                           onSaved: (input)=>dotFormRequestModel.dot_last_name,
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
                           onSaved: (input)=>dotFormRequestModel.dot_phone_no,
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
                           onSaved: (input)=>dotFormRequestModel.dot_doner_email,
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
                           onSaved: (input)=>dotFormRequestModel.dot_test_result,
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
                       //todo: divider
                       Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Divider(color: Colors.black,),
                       ),

                       //Todo: driver license
                       Container(
                         margin: EdgeInsets.symmetric(
                             horizontal: 6.111 * SizeConfig.widthMultiplier,
                             vertical: 1 * SizeConfig.heightMultiplier),
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(30)),
                         child: TextFormField(
                           onSaved: (input)=>dotFormRequestModel.dot_driver_license,
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
                               hintStyle: TextStyle(color: Colors.black38),
                               contentPadding: EdgeInsets.symmetric(
                                   horizontal: 30, vertical: 10),
                               border: InputBorder.none),
                         ),
                       ),
                       //Todo: driver license state issues
                       Container(
                         margin: EdgeInsets.symmetric(
                             horizontal: 6.111 * SizeConfig.widthMultiplier,
                             vertical: 1 * SizeConfig.heightMultiplier),
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(30)),
                         child: TextFormField(
                           onSaved: (input)=>dotFormRequestModel.dot_driver_license_state,
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
                               hintStyle: TextStyle(color: Colors.black38),
                               contentPadding: EdgeInsets.symmetric(
                                   horizontal: 30, vertical: 10),
                               border: InputBorder.none),
                         ),
                       ),
                       //Todo: driver license country
                       Container(
                         margin: EdgeInsets.symmetric(
                             horizontal: 6.111 * SizeConfig.widthMultiplier,
                             vertical: 1 * SizeConfig.heightMultiplier),
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(30)),
                         child: TextFormField(
                           onSaved: (input)=>dotFormRequestModel.dot_driver_license_country,
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
                               hintStyle: TextStyle(color: Colors.black38),
                               contentPadding: EdgeInsets.symmetric(
                                   horizontal: 30, vertical: 10),
                               border: InputBorder.none),
                         ),
                       ),


                       //todo: padding
                       Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Divider(color: Colors.black,),
                       ),
                       //todo:dob
                       Container(
                         margin: EdgeInsets.symmetric(
                             horizontal: 6.111 * SizeConfig.widthMultiplier,
                             vertical: 1 * SizeConfig.heightMultiplier),
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(30)),
                         child: TextFormField(
                           onSaved: (input)=>dotFormRequestModel.dot_dob,
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
                               hintStyle: TextStyle(color: Colors.black38),
                               contentPadding: EdgeInsets.symmetric(
                                   horizontal: 30, vertical: 10),
                               border: InputBorder.none),
                         ),
                       ),
                       //todo:agency
                       Container(
                         height: 60.0,
                         width: MediaQuery.of(context).size.width * 0.9,


                         decoration: BoxDecoration(

                             border: Border.all(
                                 color: Colors.black
                             ),
                             borderRadius: BorderRadius.circular(50.0)
                         ),
                         margin: EdgeInsets.symmetric(
                             horizontal: 24.0,
                             vertical: 10.0
                         ),
                         child: Center(
                           child: Padding(
                             padding: const EdgeInsets.only(left: 30,right: 10),
                             child: DropdownButton(
                                 isExpanded: true,
                                 iconSize: 30,
                                 hint: Text("Dot Agency",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                                 focusColor: Colors.white,
                                 dropdownColor:  Colors.white,
                                 style: TextStyle(color: Colors.black),
                                 value: _agencyItemVal,

                                 onChanged: (value){
                                   setState(() {
                                     _agencyItemVal = value;
                                   });
                                 },
                                 items: agencyDataList
                                     .map((item) {
                                   return DropdownMenuItem(
                                       value: item['id'].toString(),
                                       child: Text(item["name"],style: TextStyle(fontSize: 16),)
                                   );
                                 }
                                 ).toList()
                             ),
                           ),
                         ),
                       ),
                       Container(
                         height: 60.0,
                         width: MediaQuery.of(context).size.width * 0.9,


                         decoration: BoxDecoration(

                             border: Border.all(
                                 color: Colors.black
                             ),
                             borderRadius: BorderRadius.circular(50.0)
                         ),
                         margin: EdgeInsets.symmetric(
                             horizontal: 24.0,
                             vertical: 10.0
                         ),
                         child: Center(
                           child: Padding(
                             padding: const EdgeInsets.only(left: 30.0,right: 10),
                             child: DropdownButton(
                                 isExpanded: true,
                                 hint: Text("Reason",style: TextStyle(color: Colors.black.withOpacity(0.5)),),
                                 dropdownColor:  Colors.white,
                                 iconSize: 30,
                                 style: TextStyle(color: Colors.black),
                                 value: _reasonItemVal,
                                 onChanged: (value){
                                   setState(() {
                                     _reasonItemVal = value;
                                   });
                                 },
                                 items: reasonDataList
                                     .map((item) {
                                   return DropdownMenuItem(
                                       value: item['id'].toString(),
                                       child: Text(item["name"],style: TextStyle(fontSize: 16),)
                                   );
                                 }
                                 ).toList()
                             ),
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
                           onSaved: (input)=>dotFormRequestModel.dot_observation,
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
                             vertical: 1 * SizeConfig.heightMultiplier
                         ),
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.black),
                             borderRadius: BorderRadius.circular(30)),
                         child: TextFormField(
                           onSaved: (input)=>dotFormRequestModel.dot_comment,
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
                           onSaved: (input)=>dotFormRequestModel.dot_zip_code,
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
                                   Navigator
                                       .of(context)
                                       .pop();
                                 },
                                 child: Container(
                                   padding: EdgeInsets.only(
                                       left: 1.273 * SizeConfig.widthMultiplier,
                                       right: 1.273 *
                                           SizeConfig.widthMultiplier,
                                       top: 1.5 * SizeConfig.heightMultiplier,
                                       bottom: 1.5 *
                                           SizeConfig.heightMultiplier),
                                   width: 36.231 * SizeConfig.widthMultiplier,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       color: Colors.black
                                   ),
                                   child: Center(
                                     child: Text("PREVIOUS", style: TextStyle(
                                       //16
                                       fontSize: 1.7857 *
                                           SizeConfig.textMultiplier,
                                       fontWeight: FontWeight.w600,
                                       color: Colors.white,
                                     ),
                                     ),
                                   ),
                                 ),
                               ),

                               SizedBox(
                                 width: 3.9511 * SizeConfig.widthMultiplier,),
                               GestureDetector(
                                 onTap: () {
                                   addData();
                                   Navigator.push(context, MaterialPageRoute(builder: (_)=>FindLocation()));


                                 },
                                 child: Container(
                                   padding: EdgeInsets.only(
                                       left: 1.273 * SizeConfig.widthMultiplier,
                                       right: 1.273 *
                                           SizeConfig.widthMultiplier,
                                       top: 1.5 * SizeConfig.heightMultiplier,
                                       bottom: 1.5 *
                                           SizeConfig.heightMultiplier),
                                   width: 36.231 * SizeConfig.widthMultiplier,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(30),
                                       color: Colors.black
                                   ),
                                   child: Center(
                                     child: Text(
                                       "SELECT A LAB", style: TextStyle(
                                       //16
                                       fontSize: 1.7857 *
                                           SizeConfig.textMultiplier,
                                       fontWeight: FontWeight.w600,
                                       color: Colors.white,
                                     ),
                                     ),
                                   ),
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
         ),

         // bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
       );
     }
   bool validateAndSave() {
     final form = formKey.currentState;
     if (form.validate()) {
       form.save();
       return true;
     }
     return false;
   }
   }
