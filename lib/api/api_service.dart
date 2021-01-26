import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mid_antlantic/models/dotFormModel.dart';


class APIService {
  Future<DotFormResponseModel> login(DotFormRequestModel requestModel) async {
    String url = "http://testlink.techlancesolution.com/jay-safera/apis/save-dot-data";

    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 201 ) {
      return DotFormResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
