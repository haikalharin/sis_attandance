import 'package:sis_attendance/data/api/login/login_api.dart';
import 'package:dio/dio.dart';
import 'package:sis_attendance/data/model/address_model/address_model.dart';

import '../../../core/network/api_result.dart';
import '../../../core/network/dio_exception.dart';
import '../../../core/repository/repository_helper.dart';
import '../../model/response_model/response_model.dart';


class MapsRepository with RepositoryHelper<AddressModel> {
  final MapsApi mapsApi;

  const MapsRepository({required this.mapsApi});

  Future<ApiResult<ResponseModel<AddressModel>>> getAddress({double? lat, double? long}) async {
    // return checkItemWithDataFailOrSuccess(mapsApi.getAddress(lat: lat, long: long));
    try {
      final ResponseModel<AddressModel> items = await mapsApi.getAddress(lat: lat,long: long);
      return ApiResult.success(items);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }
}