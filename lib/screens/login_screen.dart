import 'package:mid_antlantic/screens/TestListScreen.dart';
import 'package:mid_antlantic/screens/register_screen.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';




class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                        controller: emailController,
                        validator: (val){
                          if(val.isEmpty || !val.contains("@")){
                            return "Wrong Email";
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
                          onTap: (){

                            if(emailController.text.isEmpty || passController.text.isEmpty){
                              validate();
                            }else{
                              Navigator.pushReplacement(context, PageTransition(child: TestListScreen(), type: PageTransitionType.bottomToTop));
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
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, PageTransition(child: RegisterPage(), type: PageTransitionType.rightToLeft));
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
                                "Register",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                            onTap: (){
                              loginSheet(context);
                            },
                            child: Text(
                              "Forgot password?",
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


  loginSheet(BuildContext context) {
    return showModalBottomSheet(

        backgroundColor: Colors.black,
        context: context,
        builder: (context) {
          return  Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 33.104 * SizeConfig.widthMultiplier,
                      right: 33.104 * SizeConfig.widthMultiplier,
                      top: 2 * SizeConfig.heightMultiplier),
                  child: Divider(
                    color: Colors.white,
                    thickness: 3.2,
                  ),
                ),

                Text(
                  "Select a way to receive the verification code",
                  style: TextStyle(
                      fontSize: 2.00892 * SizeConfig.textMultiplier,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width,
                        height:  40.22321 * SizeConfig.heightMultiplier,
                        child: ListView(
                          //padding: EdgeInsets.only(left: 0),
                          children: [
                            //FOR MAIL
                            Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // FOR ICON
                                    Container(
                                      child: Icon(
                                        Icons.mail_outline,
                                        size:10.0446 * SizeConfig.heightMultiplier,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Email Code to",
                                            style: TextStyle(
                                              fontSize: 2.7901 *
                                                  SizeConfig.textMultiplier,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.223214 *
                                                SizeConfig.heightMultiplier,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Color(0xFF3F9995)),
                                            ),
                                            child: Text(
                                              "hariswilliam@gmail.com",
                                              maxLines: 3,
                                              style: TextStyle(
                                                fontSize: 2.0089 *
                                                    SizeConfig.textMultiplier,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 1.317 * SizeConfig.textMultiplier,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              child: Text(
                                                "Check your mail",
                                                maxLines: 3,
                                                style: TextStyle(
                                                  fontSize: 2.0089 *
                                                      SizeConfig.textMultiplier,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),

                                    Container(
                                        child: Icon(
                                          Icons.arrow_right,
                                          size: 5.5803 * SizeConfig.heightMultiplier,
                                          color: Color(0XFF3F9995),
                                        )),
                                  ],
                                )),

                            Padding(
                              padding: EdgeInsets.only(
                                  left: 4.8309 * SizeConfig.widthMultiplier,
                                  right: 4.8309 * SizeConfig.widthMultiplier,
                                  top: 1.11607 * SizeConfig.heightMultiplier),
                              child: Divider(
                                color: Colors.white,
                                thickness: 0.9,
                              ),
                            ),

                            //FOR MOBILE VERIFY
                            Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // FOR ICON
                                    Container(
                                      child: Icon(Icons.sms,
                                          size: 10.0446 *
                                              SizeConfig.heightMultiplier,
                                          color: Colors.white),
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Sms Code to",
                                            style: TextStyle(
                                              fontSize: 2.7901 *
                                                  SizeConfig.textMultiplier,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              buildCodeNumberBox("1"),
                                              buildCodeNumberBox("2"),
                                              buildCodeNumberBox("3"),
                                              buildCodeNumberBox("4"),
                                            ],
                                          ),
                                          SizedBox(
                                            height:0.22321 *
                                                SizeConfig.heightMultiplier,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              child: Text(
                                                "Check your Message Box",
                                                maxLines: 3,
                                                style: TextStyle(
                                                  fontSize: 2.0089 *
                                                      SizeConfig.textMultiplier,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),

                                    Container(
                                        child: Icon(
                                          Icons.arrow_right,
                                          size: 5.5803 * SizeConfig.heightMultiplier,
                                          color: Color(0XFF3F9995),
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }


  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 1.9323 * SizeConfig.widthMultiplier),
      child: SizedBox(
        width: 5.6855 * SizeConfig.widthMultiplier,
        height: 5.58035 * SizeConfig.heightMultiplier,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF6F5FA),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  spreadRadius: 1,
                  offset: Offset(0.0, 0.75))
            ],
          ),
          child: Center(
            child: Text(
              codeNumber,
              style: TextStyle(
                fontSize: 2.0089 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F1F1F),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
