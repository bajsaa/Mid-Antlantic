// To parse this JSON data, do
//
//     final confirmDetailModel = confirmDetailModelFromJson(jsonString);

import 'dart:convert';

ConfirmDetailModel confirmDetailModelFromJson(String str) => ConfirmDetailModel.fromJson(json.decode(str));

String confirmDetailModelToJson(ConfirmDetailModel data) => json.encode(data.toJson());

class ConfirmDetailModel {
  ConfirmDetailModel({
    this.nonDotId,
    this.clientId,
    this.confirmOrderReason,
    this.testName,
    this.companyLocation,
    this.ownerCompanyLoc,
    this.confirmDate,
    this.collectionSite,
    this.locationCode,
    this.federalAgc,
    this.obseravtion,
  });

  String nonDotId;
  String clientId;
  String confirmOrderReason;
  String testName;
  String companyLocation;
  String ownerCompanyLoc;
  DateTime confirmDate;
  String collectionSite;
  String locationCode;
  String federalAgc;
  String obseravtion;

  factory ConfirmDetailModel.fromJson(Map<String, dynamic> json) => ConfirmDetailModel(
    nonDotId: json["non_dot_id"],
    clientId: json["client_id"],
    confirmOrderReason: json["confirm_order_reason"],
    testName: json["test_name"],
    companyLocation: json["company_location"],
    ownerCompanyLoc: json["owner_company_loc"],
    confirmDate: DateTime.parse(json["confirm_date"]),
    collectionSite: json["collection_site"],
    locationCode: json["location_code"],
    federalAgc: json["federal_agc"],
    obseravtion: json["obseravtion"],
  );

  Map<String, dynamic> toJson() => {
    "non_dot_id": nonDotId,
    "client_id": clientId,
    "confirm_order_reason": confirmOrderReason,
    "test_name": testName,
    "company_location": companyLocation,
    "owner_company_loc": ownerCompanyLoc,
    "confirm_date": "${confirmDate.year.toString().padLeft(4, '0')}-${confirmDate.month.toString().padLeft(2, '0')}-${confirmDate.day.toString().padLeft(2, '0')}",
    "collection_site": collectionSite,
    "location_code": locationCode,
    "federal_agc": federalAgc,
    "obseravtion": obseravtion,
  };
}
