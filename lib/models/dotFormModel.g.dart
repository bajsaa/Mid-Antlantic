// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'dotFormModel.dart';
//
// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************
//
// DotFormModel _$DotFormModelFromJson(Map<String, dynamic> json) {
//   return DotFormModel(
//     firstName: json['firstName'] as String,
//     lastName: json['lastName'] as String,
//     phoneNo: json['phoneNo'] as String,
//     donorEmail: json['donorEmail'] as String,
//     testResult: json['testResult'] as String,
//     driverLicense: json['driverLicense'] as String,
//     driverLicenseState: json['driverLicenseState'] as String,
//     driverLicenseCountry: json['driverLicenseCountry'] as String,
//     dob: json['dob'] as String,
//     agencyId: json['agencyId'] as int,
//     reasonId: json['reasonId'] as int,
//     observation: json['observation'] as String,
//     comment: json['comment'] as String,
//     status: json['status'] as int,
//     dateTime: json['dateTime'] == null
//         ? null
//         : DateTime.parse(json['dateTime'] as String),
//   )..zipCode = json['zipCode'] as String;
// }
//
// Map<String, dynamic> _$DotFormModelToJson(DotFormModel instance) =>
//     <String, dynamic>{
//       'firstName': instance.firstName,
//       'lastName': instance.lastName,
//       'phoneNo': instance.phoneNo,
//       'donorEmail': instance.donorEmail,
//       'testResult': instance.testResult,
//       'driverLicense': instance.driverLicense,
//       'driverLicenseState': instance.driverLicenseState,
//       'driverLicenseCountry': instance.driverLicenseCountry,
//       'dob': instance.dob,
//       'agencyId': instance.agencyId,
//       'reasonId': instance.reasonId,
//       'observation': instance.observation,
//       'comment': instance.comment,
//       'zipCode': instance.zipCode,
//       'status': instance.status,
//       'dateTime': instance.dateTime?.toIso8601String(),
//     };
