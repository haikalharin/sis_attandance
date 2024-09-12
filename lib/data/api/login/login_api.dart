import 'package:sis_attendance/data/model/address_model/address_model.dart';
import 'package:sis_attendance/data/model/login_model/login_model.dart';
import 'package:dio/dio.dart';
import 'package:sis_attendance/data/model/response_model/response_model.dart';

import '../../../core/network/api_helper.dart';
import '../../../core/network/dio_client.dart';
import '../../../core/network/service_url.dart';

class MapsApi with ApiHelper<AddressModel> {
  final DioClient dioClient;

  MapsApi({required this.dioClient});

  Future<ResponseModel<AddressModel>> getAddress({double? lat, double? long}) async {
    Map<String, String> data = {
      'lat': "${lat ?? 0.0}",
      'lon': "${long ?? 0.0}"
    };

    return await makeGetRequestWithResponseModel(
        dioClient.dioMaps.get(
          "${ServiceUrl.getAddress}?lat=$lat&lon=$long&format=json",
        ),
        AddressModel.fromJson);
  }
}
