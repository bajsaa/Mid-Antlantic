
import 'package:mid_antlantic/size_config.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/custom_field.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:flutter/material.dart';
import '../screens/select_drug_test_table.dart';
import '../ui/responsive_builder.dart';
import '../constants.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // Form Input Field Values
  String _loginEmail = "";
  String _loginPassword = "";

  int _pageState = 0;


  double _loginYOffset = 0;
  double _loginXOffset = 0;
  double windowWidth = 0;
  double windowHeight = 0;
  double _loginWidth = 0;
  double _loginHeight = 0;
  bool _keyboardVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        setState(() {
          _keyboardVisible = visible;
        });
      },
    );
  }





  @override
  Widget build(BuildContext context) {

    windowHeight = MediaQuery.of(context).size.height;
    windowWidth = MediaQuery.of(context).size.width;



    _loginHeight = windowHeight - (31.25 * SizeConfig.heightMultiplier);


    switch(_pageState){
      case 0:
        _loginYOffset = windowHeight;
        _loginXOffset = 0;
        _loginWidth = windowWidth;
        _loginHeight =_keyboardVisible ? windowHeight : windowHeight - 300;

        break;

      case 1:
        _loginXOffset = 0;
        _loginWidth = windowWidth ;
        _loginYOffset = 300;
        break;
    }



    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  _pageState = 0;
                });
              },
              child: SingleChildScrollView(
                child: AnimatedContainer(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: Duration(milliseconds: 2000),

                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [

                            Color(0XFF3D9798),
                            Color(0XFF2E7FC0)],

                          begin: Alignment(0,0),
                          end: Alignment(0,1)

                      )
                  ),

                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal:32, vertical: 100 ),
                        child: Center(
                            child:
                            Image.asset("assets/images/logo1.png")
                        ),
                      ),
                      Column(
                        children: [

                          Column(

                            children: [
                              CustomInput(
                                hintText: "Email",
                                onChanged: (value){
                                  _loginEmail = value;
                                },
                              ),

                              CustomInput(
                                hintText: "Password",
                                onChanged: (value){
                                  _loginEmail = value;
                                },
                              ),
                              CustomBtn(
                                text: "LOGIN",
                              ),
                              CustomBtn(
                                text: "REGISTER",
                                onPressed: (){
                                  Navigator
                                      .of(context)
                                      .push(MaterialPageRoute(builder: (context)=> DrugTestTable() )
                                  );
                                },

                              ),
                              Container(
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      if(_pageState !=0){
                                        _pageState = 0;
                                      }else{
                                        _pageState = 1;
                                      }
                                    });
                                  },
                                  child: Text("Forgot Password?",
                                    style: Constants.regularDarkText,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),


                    ],
                  ),


                ),
              ),
            ),

            AnimatedContainer(
              width: _loginWidth,
              height: _loginHeight,
              duration: Duration(milliseconds: 2000),
              curve: Curves.fastLinearToSlowEaseIn,
              transform: Matrix4.translationValues(_loginXOffset, _loginYOffset, 1),


              child: Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                ),

                child: Column(
                  children: [


                    Padding(
                      padding:  EdgeInsets.only(left: 33.104 * SizeConfig.widthMultiplier, right: 33.104 * SizeConfig.widthMultiplier, top: 2 * SizeConfig.heightMultiplier),
                      child: Divider(color: Color(0xFF3F9995), thickness: 3.2,
                      ),
                    ),

                      ResponsiveBuilder(
                      builder: (context, sizingInformation)=> Text("Select a way to receive the verification code",
                    style: TextStyle(fontSize: 2.00892 * SizeConfig.textMultiplier, color: Color(0xFF3F9995)),
                        textAlign: TextAlign.center,
                        ),
                        ),
                    Column(
                      children: [

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 48.22321 * SizeConfig.heightMultiplier,

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
                                        child: Icon(Icons.mail_outline, size: 10.0446 * SizeConfig.heightMultiplier, color: Color(0XFF3F9995),),

                                      ),
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Email Code to",
                                              style: TextStyle(
                                                fontSize: 2.7901 * SizeConfig.textMultiplier,
                                                color: Color(0xFF3F9995),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),


                                            SizedBox(
                                              height: 0.223214 * SizeConfig.heightMultiplier,
                                            ),


                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xFF3F9995)),
                                              ),

                                              child: Text(
                                                "hariswilliam@gmail.com",
                                                maxLines: 3,
                                                style: TextStyle(
                                                  fontSize: 2.0089 * SizeConfig.textMultiplier, color: Color(0xFF3F9995),
                                                ),
                                              ),
                                            ),


                                            SizedBox(
                                              height: 1.317 * SizeConfig.textMultiplier,
                                            ),

                                            GestureDetector(
                                              onTap: (){},
                                              child: Container(

                                                child: Text(
                                                  "Check your mail",
                                                  maxLines: 3,
                                                  style: TextStyle(
                                                    fontSize: 2.0089 * SizeConfig.textMultiplier, color: Color(0xFF3F9995),
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ]
                                      ),

                                      Container(
                                          child: Icon(Icons.arrow_right, size: 5.5803 * SizeConfig.heightMultiplier, color: Color(0XFF3F9995),)
                                      ),
                                    ],
                                  )
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 4.8309 * SizeConfig.widthMultiplier, right: 4.8309 * SizeConfig.widthMultiplier, top: 1.11607 * SizeConfig.heightMultiplier),
                                child: Divider(color: Color(0xFF2E7FC0), thickness: 0.9,),
                              ),





                              //FOR MOBILE VERIFY
                              Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      // FOR ICON
                                      Container(
                                        child: Icon(Icons.sms, size: 10.0446 * SizeConfig.heightMultiplier, color: Color(0XFF3F9995)),

                                      ),
                                      Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Sms Code to",
                                              style: TextStyle(
                                                fontSize: 2.7901 * SizeConfig.textMultiplier,
                                                color: Color(0xFF3F9995),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),


                                            SizedBox(
                                              height: 2,
                                            ),


                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                buildCodeNumberBox("1"),
                                                buildCodeNumberBox("2"),
                                                buildCodeNumberBox("3"),
                                                buildCodeNumberBox("4"),

                                              ],
                                            ),


                                            SizedBox(
                                              height: 0.22321 * SizeConfig.heightMultiplier,
                                            ),

                                            GestureDetector(
                                              onTap: (){},
                                              child: Container(

                                                child: Text(
                                                  "Check your Message Box",
                                                  maxLines: 3,
                                                  style: TextStyle(
                                                    fontSize: 2.0089 * SizeConfig.textMultiplier, color: Color(0xFF3F9995),
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ]
                                      ),

                                      Container(
                                          child: Icon(Icons.arrow_right, size: 5.5803 * SizeConfig.heightMultiplier, color: Color(0XFF3F9995),)
                                      ),
                                    ],
                                  )
                              )
                            ],
                          ),
                        )






                      ],
                    )],
                ),
              ),
            )

          ],




        )
    );
  }


  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:1.9323 * SizeConfig.widthMultiplier),
      child: SizedBox(
        width: 3.6855 * SizeConfig.widthMultiplier,
        height: 5.58035 * SizeConfig.heightMultiplier,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF6F5FA),
            borderRadius: BorderRadius.all(
              Radius.circular(0.2634 * SizeConfig.heightMultiplier),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.292 * SizeConfig.heightMultiplier,
                  spreadRadius: 1,
                  offset: Offset(0.0, 0.75)
              )
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