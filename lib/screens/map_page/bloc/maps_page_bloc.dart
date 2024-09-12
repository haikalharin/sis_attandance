import 'dart:async';

import 'package:intl/intl.dart';
import 'package:sis_attendance/core/local_storage/secure_storage/secure_storage.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';
import 'package:sis_attendance/data/model/address_model/address_model.dart';
import 'package:sis_attendance/data/repository/maps/maps_repository.dart';

import '../../../common/validators/mandatory_field_validator.dart';
import '../../../data/model/login_model/login_model.dart';
import '../../../data/model/response_model/response_model.dart';
import '../../../data/repository/user/user_repository.dart';

part 'maps_page_event.dart';
part 'maps_page_state.dart';

class MapsPageBloc extends Bloc<MapsPageEvent,MapsPageState> {
  final MapsRepository mapsRepository;
 MapsPageBloc({required this.mapsRepository}) : super(MapsPageInitial()) {
    on<LatLongInputEvent>(latLongInputEvent);
  }

 Future<void> latLongInputEvent(LatLongInputEvent event,
     Emitter<MapsPageState> emit) async {
   try {
     final result = await mapsRepository.getAddress(lat:event.lat,long:event.long);
     result.when(success: (response){
       AddressModel addressModel = response.data;
       String checkInTime =
           DateFormat('HH:mm:ss').format(DateTime.now());
       emit(state.copyWith(
         checkInTime: checkInTime,
           addressModel: addressModel,
           submitStatus: FormzSubmissionStatus.success));
     }, failure: (error) {
       emit(state.copyWith(
           submitStatus: FormzSubmissionStatus.failure));
     });

   }catch(error){
     print(error);
   }
 }
}
