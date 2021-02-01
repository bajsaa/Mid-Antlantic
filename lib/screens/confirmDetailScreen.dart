import 'dart:convert';

import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:mid_antlantic/helpers/dotFormHelpers.dart';
import 'package:mid_antlantic/helpers/selectDateHelpers.dart';
import 'package:mid_antlantic/models/confirm_detail_model.dart';
import 'package:mid_antlantic/models/non_dot_form_model.dart';

import 'package:mid_antlantic/screens/profileScreen.dart';
import 'package:http/http.dart' as http;
import 'package:mid_antlantic/utils/api.dart';
import 'package:mid_antlantic/widgets/colors.dart';
import 'package:page_transition/page_transition.dart';

import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';
import 'createUser.dart';

class ConfirmDetails extends StatefulWidget {

  final NonDotFormModel nonDotFormModel;

  const ConfirmDetails({Key key, this.nonDotFormModel}) : super(key: key);


  @override
  _ConfirmDetailsState createState() => _ConfirmDetailsState();
}

class _ConfirmDetailsState extends State<ConfirmDetails> {
  final ConstantColors constantColors = ConstantColors();
  NonDotFormModel _nonDotModel;
  Future<NonDotFormModel> _FutureNonDotModel;
  Future<ConfirmDetailModel> _confirmDetailModel;
  var mainUrl = Api.authUrl;

  Future<ConfirmDetailModel> addConfirm() async {
    var url = "$mainUrl/apis/save-non-dot-order-confirm-details";
    var res = await http.post(url,
        body: jsonEncode({
          "non_dot_id": "1",
          "client_id": "1",
          "confirm_order_reason":_nonDotModel.orderReason,
          "test_name": _nonDotModel.packageCode,
          "company_location": _nonDotModel.locationCode,
          "owner_company_loc": "test",
          "confirm_date": _nonDotModel.participantDob,
          "collection_site": "test",
          "location_code": widget.nonDotFormModel.locationCode,
          "federal_agc": "test",
          "obseravtion": "test"
        }));
    print(res.body);
    if(res.statusCode == 201){
      return ConfirmDetailModel.fromJson(jsonDecode(res.body));
    }else{
      throw Exception('Failed');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nonDotModel = widget.nonDotFormModel;
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat.yMMMd()
        .format(Provider.of<SelectDateHelpers>(context).currentDate);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: constantColors.whiteColor,
        title: Text("Confirm Details", style: Constants.boldheading),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Information",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2, color: Colors.black)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              //Todo: Order Reason
                              Row(
                                children: [
                                  Text("Order Reason:  ",style: TextStyle(fontWeight: FontWeight.bold),),
                                  _nonDotModel == null ? Text("") :Text(_nonDotModel.orderReason)

                                ],
                              ),
                              //Todo: package Code
                              Row(
                                children: [
                                  Text("Package Code:  ",style: TextStyle(fontWeight: FontWeight.bold),),
                                  _nonDotModel == null ? Text("") :Text(_nonDotModel.packageCode)
                                ],
                              ),

                              Row(
                                children: [
                                  Text(
                                    "Company Location: ",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text(
                                      "MID ATLANTIC MOBILE DRUG"),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Owner Company Location :",style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),

                              Row(
                                children: [
                                  Text("Date : ",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text(formattedDate)
                                ],
                              ),

                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Collection Site: ",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("MID ATLANTIC MOBILE ",),
                                    ],
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Text("Location Code: ",style: TextStyle(fontWeight: FontWeight.bold),),
                                  _nonDotModel == null ? Text("") :Text(_nonDotModel.locationCode)
                                ],
                              ),
                              Text("Federal Agency: ",style: TextStyle(fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Text("Observed Collection Required: ",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text(Provider.of<DotFormHelpers>(context,
                                      listen: false)
                                      .observationController
                                      .text) ,
                                  // Text(Provider.of<NonDotFormHelpers>(context,
                                  //     listen: false)
                                  //     .observationController
                                  //     .text)
                                ],
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FutureBuilder<NonDotFormModel>(
                          future:_FutureNonDotModel,
                          builder: (context, snapshot) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "View",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "First Name: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),

                                    !snapshot.hasData
                                        ? Text("")
                                        : Text(
                                            snapshot.data.participantFirstName),
                                    // Text(Provider.of<NonDotFormHelpers>(context,
                                    //     listen: false)
                                    //     .firstNameController
                                    //     .text)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Last Name: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    !snapshot.hasData
                                        ? Text("")
                                        : Text(
                                            snapshot.data.participantLastName),
                                    // Text(Provider.of<NonDotFormHelpers>(context,
                                    //     listen: false)
                                    //     .lastNameController
                                    //     .text)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "SSN: ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        !snapshot.hasData
                                            ? Text("")
                                            : Text(snapshot
                                                .data.participantGovernmentId)
                                      ],
                                    ),

                                    // Text(Provider.of<NonDotFormHelpers>(context,
                                    //     listen: false)
                                    //     .ssController
                                    //     .text)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "DOB: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    !snapshot.hasData
                                        ? Text("")
                                        : Text(snapshot.data.participantDob.toString()),
                                    // Text(Provider.of<NonDotFormHelpers>(context,
                                    //     listen: false)
                                    //     .dobController
                                    //     .text)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Email: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    !snapshot.hasData
                                        ? Text("")
                                        : Text(snapshot.data.participantEmail),
                                    // Text(Provider.of<NonDotFormHelpers>(context,
                                    //     listen: false)
                                    //     .donorMailController
                                    //     .text)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Phone: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    !snapshot.hasData
                                        ? Text("")
                                        : Text(snapshot.data.participantPhone),
                                    // Text(Provider.of<NonDotFormHelpers>(context,
                                    //     listen: false)
                                    //     .phoneNoController
                                    //     .text)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Country: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(Provider.of<DotFormHelpers>(context,
                                            listen: false)
                                        .driverLicenseCountryController
                                        .text),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "State: ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(Provider.of<DotFormHelpers>(context,
                                            listen: false)
                                        .driverLicenseStateController
                                        .text),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Zip Code:  ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    !snapshot.hasData
                                        ? Text("")
                                        : Text(snapshot
                                            .data.participantPostalCode),
                                    // Text(Provider.of<NonDotFormHelpers>(context,
                                    //     listen: false)
                                    //     .zipCodeController
                                    //     .text)
                                  ],
                                ),
                              ],
                            );
                          },
                        ))
                  ],
                ),
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
                              fontSize: 1.7857 * SizeConfig.textMultiplier,
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
                      onTap: () {
                        addConfirm();
                        Navigator.push(
                            context,
                            PageTransition(
                                child: CreateUserScreen(),
                                type: PageTransitionType.rightToLeftWithFade));
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
                            "CONFIRM",
                            style: TextStyle(
                              //16
                              fontSize: 1.7857 * SizeConfig.textMultiplier,
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
      ),
    );
  }
}
