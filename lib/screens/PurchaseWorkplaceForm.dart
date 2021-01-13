import 'package:flutter/material.dart';
import 'package:mid_antlantic/helpers/purchaseWorkplaceHelpers.dart';
import 'package:mid_antlantic/widgets/BottomNavBar.dart';

import 'package:provider/provider.dart';


class PurchaseDrugFreeForm extends StatefulWidget {
  @override
  _PurchaseDrugFreeFormState createState() => _PurchaseDrugFreeFormState();
}

class _PurchaseDrugFreeFormState extends State<PurchaseDrugFreeForm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
      appBar: Provider.of<PurchaseWorkplaceHelpers>(context,listen: false).purchaseWorkplaceAppBar(),
      body: Provider.of<PurchaseWorkplaceHelpers>(context,listen: false).purchaseWorkplaceBody(context),
      bottomNavigationBar: Provider.of<BottomNavBar>(context,listen: false).customBottomNavBar(context),
    );
  }
}