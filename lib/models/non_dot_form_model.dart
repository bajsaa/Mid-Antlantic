// To parse this JSON data, do
//
//     final nonDotFormModel = nonDotFormModelFromJson(jsonString);

import 'dart:convert';

NonDotFormModel nonDotFormModelFromJson(String str) => NonDotFormModel.fromJson(json.decode(str));

String nonDotFormModelToJson(NonDotFormModel data) => json.encode(data.toJson());

class NonDotFormModel {
  NonDotFormModel({
    this.orgId,
    this.locationCode,
    this.packageCode,
    this.orderReferenceNumber,
    this.participantGovernmentId,
    this.orderReason,
    this.participantFirstName,
    this.participantLastName,
    this.participantPhone,
    this.participantEmail,
    this.participantPostalCode,
    this.participantRegion,
    this.participantMunicipality,
    this.participantAddress,
    this.participantDob,
    this.expirationDateTime,
    this.dotAgency,
    this.reportMessage,
    this.labLocationCode,
  });

  String orgId;
  String locationCode;
  String packageCode;
  String orderReferenceNumber;
  String participantGovernmentId;
  String orderReason;
  String participantFirstName;
  String participantLastName;
  String participantPhone;
  String participantEmail;
  String participantPostalCode;
  String participantRegion;
  String participantMunicipality;
  String participantAddress;
  DateTime participantDob;
  DateTime expirationDateTime;
  String dotAgency;
  String reportMessage;
  String labLocationCode;

  factory NonDotFormModel.fromJson(Map<String, dynamic> json) => NonDotFormModel(
    orgId: json["org_id"],
    locationCode: json["location_code"],
    packageCode: json["package_code"],
    orderReferenceNumber: json["order_reference_number"],
    participantGovernmentId: json["participant_government_id"],
    orderReason: json["order_reason"],
    participantFirstName: json["participant_first_name"],
    participantLastName: json["participant_last_name"],
    participantPhone: json["participant_phone"],
    participantEmail: json["participant_email"],
    participantPostalCode: json["participant_postal_code"],
    participantRegion: json["participant_region"],
    participantMunicipality: json["participant_municipality"],
    participantAddress: json["participant_address"],
    participantDob: DateTime.parse(json["participant_dob"]),
    expirationDateTime: DateTime.parse(json["expiration_date_time"]),
    dotAgency: json["dot_agency"],
    reportMessage: json["report_message"],
    labLocationCode: json["lab_location_code"],
  );

  Map<String, dynamic> toJson() => {
    "org_id": orgId,
    "location_code": locationCode,
    "package_code": packageCode,
    "order_reference_number": orderReferenceNumber,
    "participant_government_id": participantGovernmentId,
    "order_reason": orderReason,
    "participant_first_name": participantFirstName,
    "participant_last_name": participantLastName,
    "participant_phone": participantPhone,
    "participant_email": participantEmail,
    "participant_postal_code": participantPostalCode,
    "participant_region": participantRegion,
    "participant_municipality": participantMunicipality,
    "participant_address": participantAddress,
    "participant_dob": "${participantDob.year.toString().padLeft(4, '0')}-${participantDob.month.toString().padLeft(2, '0')}-${participantDob.day.toString().padLeft(2, '0')}",
    "expiration_date_time": expirationDateTime.toIso8601String(),
    "dot_agency": dotAgency,
    "report_message": reportMessage,
    "lab_location_code": labLocationCode,
  };
}
