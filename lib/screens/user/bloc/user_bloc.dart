import 'dart:async';

import 'package:sis_attendance/data/model/user/user.dart';
import 'package:sis_attendance/screens/user/bloc/user_event.dart';
import 'package:sis_attendance/screens/user/bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/user/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository}) : super(const UserState.loaded()) {
    on<UserCreated>(createUser);
    on<UsersFetched>(userFetched);
  }


  Future<void> createUser(UserCreated event, Emitter<UserState> emit) async {
    emit(UserState.loading(
      data: state.data,
      status: state.status,
      gender: state.gender,
    ));
    final result = await userRepository.createUser(event.user);
    result.when(
        success: (data) {
          add(UsersFetched());
        },
        failure: (error) {});
  }


  Future<void> userFetched(UsersFetched event, Emitter<UserState> emit) async {

    emit(UserState.loaded(
      data: [User(name: 'asdsad', email: 'asdsa@sadsa.sad', gender: Gender.male, status: UserStatus.active)],
      status: state.status,
      gender: state.gender,
    ));
  }
}
