
import 'package:credit_card/credit_card_form.dart';
import 'package:credit_card/credit_card_model.dart';
import 'package:credit_card/credit_card_widget.dart';
import 'package:mid_antlantic/images_path.dart';
import 'package:mid_antlantic/size_config.dart';
import 'package:mid_antlantic/ui/responsive_builder.dart';
import 'package:mid_antlantic/widgets/Bottom_Navigation_Bar.dart';
import 'package:mid_antlantic/widgets/Custom_back_forward_button.dart';
import 'package:mid_antlantic/widgets/appBar.dart';
import 'package:mid_antlantic/widgets/customButton.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_Observation.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_Reason.dart';
import 'package:mid_antlantic/widgets/drawer.dart';
import 'file:///F:/AndroidStudioProject/OFFICE-PROJECT-1/lib/images_path.dart';
import 'package:flutter/material.dart';
import 'package:mid_antlantic/widgets/custom_dropdown_dot_agency.dart';
import 'package:mid_antlantic/widgets/custom_field.dart';
import '../images_path.dart';

import '../constants.dart';
class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                height: 200,
                width: MediaQuery.of(context).size.width,
                animationDuration: Duration(milliseconds: 1000),
              cardBgColor: Colors.black,
            ),

            Expanded(child: SingleChildScrollView(
              child: CreditCardForm(
                themeColor: Colors.black,
                onCreditCardModelChange: onModelChange,
              ),
            )),
            CustomBtn(
              text: "Proceed to pay",
            ),
          ],
        ),
      ),
    );
  }
  void onModelChange(CreditCardModel model){
      setState(() {
        cardNumber = model.cardNumber;
        expiryDate = model.expiryDate;
        cardHolderName = model.cardHolderName;
        cvvCode = model.cvvCode;
        isCvvFocused = model.isCvvFocused;
      });
  }
}
