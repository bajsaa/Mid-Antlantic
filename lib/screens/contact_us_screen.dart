import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mid_antlantic/screens/FindLocation.dart';
import 'package:mid_antlantic/screens/TestListScreen.dart';
import 'package:mid_antlantic/screens/profileScreen.dart';
import 'package:mid_antlantic/screens/test_history.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import '../constants.dart';
import '../size_config.dart';
import 'package:mid_antlantic/utils/api.dart';
import 'dart:convert';





class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {

  final ConstantColors constantColors = ConstantColors();
  var formKey = GlobalKey<FormState>();
  var mainUrl = Api.authUrl;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController commentController = TextEditingController();

  displayToast(String message, BuildContext context) {
    Fluttertoast.showToast(msg: message);
  }
  
  saveContactForm() async{
    var res =await  http.post("$mainUrl/apis/save-contact-us-info",
    body: jsonEncode({
      "name":nameController.text,
      "email":emailController.text,
      "phone":phoneController.text,
      "message":commentController.text
    })
    ).whenComplete(() => displayToast("Thank you!" ,context));
    print(res.body);
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: constantColors.whiteColor,
        title: Text("Contact Us", style: Constants.boldheading),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.black,
            onPressed: (){
              Navigator.push(context, PageTransition(child: ProfileScreen(), type: PageTransitionType.rightToLeft));
            }, )
        ],
      ),

      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: nameController,
                        // validator: (val){
                        //   if(val.isEmpty || !val.contains("@")){
                        //     return "Wrong Email";
                        //   }else{
                        //     return null;
                        //   }
                        // },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Name",
                            hintStyle: TextStyle(color: Colors.black38) ,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: emailController,
                        // validator: (val){
                        //   if(val.isEmpty || !val.contains("@")){
                        //     return "Wrong Email";
                        //   }else{
                        //     return null;
                        //   }
                        // },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.black38) ,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: phoneController,
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
                            hintText: "Describe your help needed",
                            hintStyle: TextStyle(color: Colors.black38) ,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                      saveContactForm();
                      //displayToast("submit successfully",context);


                },
                child: Container(
                  height: 7.90 * SizeConfig.heightMultiplier,
                  margin:
                  EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white, width: 1 * SizeConfig.widthMultiplier),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Website: ", style: TextStyle(color: Colors.black, fontSize: 16),),
                        GestureDetector(
                            onTap: () async {
                              const url = 'https://www.jerseydrugtesting.com';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Text("www.jerseydrugtesting.com", style: TextStyle(color: Colors.red, fontSize: 16), textAlign: TextAlign.center,  ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Email: ", style: TextStyle(color: Colors.black,fontSize: 16),),
                        GestureDetector(
                            onTap: () async {
                              const url = 'mailto:info@jerseydrugtesting.com';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Text("info@jerseydrugtesting.com",style: TextStyle(color: Colors.red,fontSize: 16), textAlign: TextAlign.center )
                        )
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ) ,
     // bottomNavigationBar:Provider.of<ContactUsHelpers>(context,listen: false).contactUsBottomNavBar(context),
    );
  }
}
