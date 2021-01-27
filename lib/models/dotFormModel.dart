class DotFormResponseModel {
  final String status;
  final String error;
  final String message;

  DotFormResponseModel({this.status, this.error, this.message});

  factory DotFormResponseModel.fromJson(Map<String, dynamic> json){
    return DotFormResponseModel(
      status: json["status"] !=null ? json["status"] : "",
        error: json["error"] !=null ? json["error"] : ""
    );
  }

}


class DotFormRequestModel {
  String dot_first_name;
  String dot_last_name;
  String dot_phone_no;
  String dot_doner_email;
  String dot_test_result;
  String dot_driver_license;
  String dot_driver_license_state;
  String dot_driver_license_country;
  String dot_dob;
  String dot_agency_id;
  String dot_observation;
  String dot_comment;
  String dot_zip_code;

  DotFormRequestModel({
    this.dot_first_name,
    this.dot_last_name,
    this.dot_phone_no,
    this.dot_agency_id,
    this.dot_comment,
    this.dot_dob,
    this.dot_doner_email,
    this.dot_driver_license,
    this.dot_driver_license_country,
    this.dot_driver_license_state,
    this.dot_observation,
    this.dot_test_result,
    this.dot_zip_code
});


  Map<String, dynamic> toJson() {
    Map<String,dynamic> map = {
      "first_name" : dot_first_name,
      "last_name" : dot_last_name,
      "phone_no" : dot_phone_no,
      "reason_id" : dot_agency_id,
      "comment" : dot_comment,
      "dob" : dot_dob,
      "doner_email" : dot_doner_email,
      "driver_license" : dot_driver_license,
      "driver_license_state" : dot_driver_license_state,
      "observation" : dot_observation,
      "test_result" : dot_test_result,
      "zip_code" : dot_zip_code,


    };
    return map;
  }






}