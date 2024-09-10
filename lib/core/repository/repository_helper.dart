import 'package:sis_attendance/core/network/api_result.dart';
import 'package:sis_attendance/core/network/dio_exception.dart';
import 'package:sis_attendance/data/model/response_model/response_model.dart';
import 'package:dio/dio.dart';

mixin RepositoryHelper<T> {
  Future<ApiResult<List<T>>> checkItemsFailOrSuccess(Future<List<T>> apiCallback) async {
    try {
      final List<T> items = await apiCallback;
      return ApiResult.success(items);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }

  Future<ApiResult<ResponseModel<T>>> checkItemsWithResponseModelFailOrSuccess(Future<ResponseModel<T>> apiCallback) async {
    try {
      final ResponseModel<T> items = await apiCallback;
      return ApiResult.success(items);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }

  Future<ApiResult<T>> checkItemWithDataFailOrSuccess(Future<T> apiCallback) async {
    try {
      final T item = await apiCallback;
      return ApiResult.success(item);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }

  Future<ApiResult<bool>> checkItemFailOrSuccess(Future<bool> apiCallback) async {
    try {
      await apiCallback;
      return const ApiResult.success(true);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return ApiResult.failure(errorMessage);
    }
  }
}
