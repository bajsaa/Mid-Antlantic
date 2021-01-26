import 'package:flutter/material.dart';
import 'package:mid_antlantic/screens/payment_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../constants.dart';
import '../size_config.dart';


class CreateUserHelpers with ChangeNotifier{
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();


  void validate(){
    if(formKey.currentState.validate()){
      print("validated");
    }else{
      print("not validated");
    }
  }

  Widget createUserBody(BuildContext context){
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text("Create Account", style: Constants.boldheading,),
            ),
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
                      controller: emailController,
                      validator: (val){
                        if(val.isEmpty || !val.contains("@")){
                          return "required";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "Username",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal:  6.111 * SizeConfig.widthMultiplier, vertical: 2.370 * SizeConfig.heightMultiplier),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: passController,
                      validator: (val){
                        if(val.isEmpty){
                          return "Required";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          border: InputBorder.none),
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){

                          if(emailController.text.isEmpty || passController.text.isEmpty){
                            validate();
                          }else{
                            Navigator.pushReplacement(context, PageTransition(child: PaymentScreen(), type: PageTransitionType.bottomToTop));
                          }
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
                              "Proceed to pay",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }


}