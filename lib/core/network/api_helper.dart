import 'dart:convert';

import 'package:sis_attendance/common/app_extension.dart';
import 'package:sis_attendance/core/network/dio_exception.dart';
import 'package:sis_attendance/data/model/response_model/response_model.dart';
import 'package:dio/dio.dart';

import '../../utils/http_util.dart';

abstract mixin class ApiHelper<T> {
  late final T data;

  Future<bool> _requestMethodTemplate(
      Future<Response<dynamic>> apiCallback) async {
    final Response response = await apiCallback;
    if (response.statusCode.success) {
      return true;
    } else {
      throw DioExceptions;
    }
  }

  //Generic method template for create item on server
  Future<bool> makePostRequest(Future<Response<dynamic>> apiCallback) async {
    return _requestMethodTemplate(apiCallback);
  }

  //Generic method template for update item on server
  Future<bool> makePutRequest(Future<Response<dynamic>> apiCallback) async {
    return _requestMethodTemplate(apiCallback);
  }

  //Generic method template for delete item from server
  Future<bool> makeDeleteRequest(Future<Response<dynamic>> apiCallback) async {
    return _requestMethodTemplate(apiCallback);
  }

  //Generic method template for getting data from Api
  Future<T> makePostRequestWithData(Future<Response<dynamic>> apiCallback,
      T Function(Map<String, dynamic> json) getJsonCallback) async {
    final Response response = await apiCallback;

    final T items = getJsonCallback(response.data);

    if (response.statusCode.success) {
      return items;
    } else {
      throw DioExceptions;
    }
  }

  //Generic method template for getting data from Api
  Future<Response> makePostRequestWithResponse(
      Future<Response<dynamic>> apiCallback) async {
    final Response response = await apiCallback;

    if (response.statusCode.success) {
      return response;
    } else {
      throw DioExceptions;
    }
  }

  //Generic method template for getting data from Api
  Future<List<T>> makeGetRequest(Future<Response<dynamic>> apiCallback,
      T Function(Map<String, dynamic> json) getJsonCallback) async {
    final Response response = await apiCallback;

    final List<T> items = List<T>.from(
      json
          .decode(json.encode(response.data))
          .map((item) => getJsonCallback(item)),
    );
    if (response.statusCode.success) {
      return items;
    } else {
      throw DioExceptions;
    }
  }

  Future<ResponseModel<T>> makeGetRequestWithResponseModel(
      Future<Response<dynamic>> apiCallback,
      T Function(Map<String, dynamic>) fromJson) async {
    final Response response = await apiCallback;
    final responseData = HttpUtil.getResponse(response);
    final ResponseModel<T> responseModel =
        ResponseModel.fromJson(responseData, fromJson);
    var data = responseModel;
    print(data);
    return responseModel;
  }
}
