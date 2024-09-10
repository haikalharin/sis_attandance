import 'dart:async';

import 'package:sis_attendance/core/local_storage/secure_storage/secure_storage.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:meta/meta.dart';

import '../../../common/validators/mandatory_field_validator.dart';
import '../../../data/model/login_model/login_model.dart';
import '../../../data/repository/user/user_repository.dart';

part 'login_page_event.dart';
part 'login_page_state.dart';

class LoginPageBloc extends Bloc<LoginPageEvent,LoginPageState> {
  final UserRepository userRepository;
 LoginPageBloc({required this.userRepository}) : super(LoginPageInitial()) {
    on<UserNameInputEvent>(userNameInputEvent);
  }

 Future<void> userNameInputEvent(UserNameInputEvent event,
     Emitter<LoginPageState> emit) async {
   final userName = MandatoryFieldValidator.dirty(event.username);
   emit(state.copyWith(
     username: userName,
   ));
 }
}
