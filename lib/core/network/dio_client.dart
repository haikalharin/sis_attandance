import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:sis_attendance/core/network/api_config.dart';
import 'package:sis_attendance/core/network/dio_interceptor.dart';
import 'package:dio/dio.dart' show Dio, Interceptor, ResponseType;

import '../../common/configurations/configurations.dart';
import '../../flavors.dart';
import 'auth_interceptor.dart';

class DioClient {
  final Dio dio;
  final Dio dioAuth;
  final Dio dioMaps;

  DioClient(this.dio, this.dioAuth,this.dioMaps) {

    Iterable<Interceptor> interceptor = [];

    if (F.appFlavor == Flavor.DEVELOPMENT) {
      if (kReleaseMode) {
        interceptor = [DioInterceptor(dio),
          CurlLoggerDioInterceptor(printOnSuccess: true),
          // alice.getDioInterceptor()
        ];
      } else {
        interceptor = [
          // alice.getDioInterceptor(),
          CurlLoggerDioInterceptor(printOnSuccess: true),
          DioInterceptor(dio),

        ];
      }
    }

    if (F.appFlavor == Flavor.STAGING) {
      if (kReleaseMode) {
        interceptor = [DioInterceptor(dio),
          // alice.getDioInterceptor()
        ];
      } else {
        interceptor = [
          // alice.getDioInterceptor(),
          DioInterceptor(dio),
          CurlLoggerDioInterceptor(printOnSuccess: true),
        ];
      }
    }

    if (F.appFlavor == Flavor.PRODUCTION) {
      if (kReleaseMode) {
        interceptor = [DioInterceptor(dio)];
      } else {
        interceptor = [
          // alice.getDioInterceptor(),
          DioInterceptor(dio),
          CurlLoggerDioInterceptor(printOnSuccess: true),

        ];
      }
    }
    dio
      ..options.baseUrl = Configurations.host
      ..options.headers = ApiConfig.header
      ..options.connectTimeout = ApiConfig.connectionTimeout
      ..options.receiveTimeout = ApiConfig.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.addAll([DioInterceptor(dio)]);

    dioAuth
      ..options.baseUrl = Configurations.host
      ..options.headers = ApiConfig.header
      ..options.connectTimeout = ApiConfig.connectionTimeout
      ..options.receiveTimeout = ApiConfig.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.addAll([AuthInterceptor(dio)]);

    dioMaps
      ..options.baseUrl = Configurations.host_maps
      ..options.headers = ApiConfig.header
      ..options.connectTimeout = ApiConfig.connectionTimeout
      ..options.receiveTimeout = ApiConfig.receiveTimeout
      ..options.responseType = ResponseType.json
      ..interceptors.addAll([AuthInterceptor(dio)]);
  }

}
