import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/TestListScreen.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:page_transition/page_transition.dart';

import '../constants.dart';
import '../size_config.dart';


class PurchaseWorkplaceHelpers with ChangeNotifier{
  final ConstantColors constantColors = ConstantColors();
  var formKey = GlobalKey<FormState>();


  void validate(){
    if(formKey.currentState.validate()){
      print("validated");
    }else{
      print("not validated");
    }
  }


  TextEditingController companyNameController = TextEditingController();
  TextEditingController streetAddressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController primaryContactNameController = TextEditingController();
  TextEditingController primaryContactEmailController = TextEditingController();
  TextEditingController primaryContactPhoneController = TextEditingController();
  TextEditingController numberOfLocationsController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController randomPoolController = TextEditingController();
  TextEditingController workPlacePolicyController = TextEditingController();

  Widget purchaseWorkplaceAppBar(){
    return AppBar(
      centerTitle: true,
      backgroundColor: constantColors.whiteColor,
      title: Text("Join Random Selection", style: Constants.boldheading),
    );
  }

  Widget purchaseWorkplaceBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                      controller: companyNameController,
                      validator: (val){
                        if(val.isEmpty ){
                          return "required";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText:  "Company Name",
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
                      controller: streetAddressController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                          hintText: "Street Address",
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
                      controller:cityController ,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "City",
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
                      controller: stateController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText:"State",
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: primaryContactNameController,
                      validator: (val){
                        if(val.isEmpty ){
                          return "Required";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Primary Contact Name",
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
                      controller: primaryContactEmailController,
                      validator: (val){
                        if(val.isEmpty ){
                          return "Required";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Primary Contact Email",
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
                      controller: primaryContactEmailController,
                      validator: (val){
                        if(val.isEmpty ){
                          return "Required";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "Primary Contact Phone",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Divider(color: Colors.black,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: numberOfLocationsController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.number  ,
                      decoration: InputDecoration(
                          hintText: "Number Of Locations?",
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
                      controller: workPlacePolicyController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Are you looking to join a random pool?",
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
                      controller: workPlacePolicyController,
                      // validator: (val){
                      //   if(val.isEmpty || !val.contains("@")){
                      //     return "Wrong Email";
                      //   }else{
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Are you interested in a Drug Free Work place Policy?",
                          hintStyle: TextStyle(color: Colors.black38) ,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),



                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  if(companyNameController.text.isEmpty || primaryContactNameController.text.isEmpty || primaryContactEmailController.text.isEmpty || primaryContactPhoneController.text.isEmpty){
                    validate();
                  }else{
                    Navigator.pushReplacement(context, PageTransition(child: TestListScreen(), type: PageTransitionType.bottomToTop));
                  }
                },
                child: Container(
                  padding: EdgeInsets.only(left: 1.273 * SizeConfig.widthMultiplier, right: 1.273 * SizeConfig.widthMultiplier, top: 1.5 * SizeConfig.heightMultiplier, bottom: 1.5 * SizeConfig.heightMultiplier),
                  width: 36.231 * SizeConfig.widthMultiplier,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black
                  ),
                  child: Center(
                    child: Text("Submit", style:TextStyle(
                      //16
                      fontSize: 1.7857 * SizeConfig.textMultiplier,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }

}