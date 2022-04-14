import 'package:classroom_assignment/modules/common/constants/api_end_points.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Service {
  Response? response;
  var dio = Dio();
  Future getApi(api) async {
    try {
      response = await dio.get('$host/$api?$apiKey');
      debugPrint('R E S  I S : $response');
    } catch (exception) {
      debugPrint('E X C E P T I O N  O C C U R S');
    }
    return response;
  }

  Future patchApi(api, data) async {
    try {
      dio.options.headers["Content-Type"] = "multipart/form-data";
      response = await dio.patch('$host/$api?$apiKey', data: data);
      debugPrint('R E S  I S : $response');
    } catch (exception) {
      debugPrint('E X C E P T I O N  O C C U R S $exception');
    }
    return response;
  }
}
