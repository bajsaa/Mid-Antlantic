
import 'package:mid_antlantic/screens/login_screen.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';




class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var formKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void validate(){
    if(formKey.currentState.validate()){
      print("validated");
    }else{
      print("not validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(50),
                child: Image.asset("assets/images/newlogo.png"),
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
                        controller: userNameController,
                        validator: (val){
                          if(val.isEmpty || !val.contains("@")){
                            return "Required";
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
                      margin: EdgeInsets.symmetric(horizontal: 6.111 * SizeConfig.widthMultiplier, vertical: 1 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: emailController,
                        validator: (val){
                          if(val.isEmpty || !val.contains("@")){
                            return "Required";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Email",
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
                          onTap: (){},
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
                                "Register",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, PageTransition(child: LoginPage(), type: PageTransitionType.leftToRight));
                            },
                            child: Text(
                              "Already a user? login",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
