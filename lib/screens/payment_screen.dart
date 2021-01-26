
import 'package:credit_card/credit_card_form.dart';
import 'package:credit_card/credit_card_model.dart';
import 'package:credit_card/credit_card_widget.dart';

import 'package:mid_antlantic/screens/thank_you.dart';
import 'package:mid_antlantic/size_config.dart';




import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

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
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(height: 20,
                child: Row(
                  children: [
                    Image.asset("assets/images/lock.png"),
                    Text("Secure & Private", style: Constants.regularDarkText,)
                  ],
                ),),
            ),
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
            GestureDetector(
              onTap: (){

                Navigator.push(context, PageTransition(child: ThankYouScreen(), type: PageTransitionType.rightToLeftWithFade));
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
                    "Pay",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
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
