part of 'login_page_bloc.dart';

class LoginPageState {
  final String? role;
  final MandatoryFieldValidator? username;
  final bool isExist;
  final FormzSubmissionStatus submitStatus;
  final String? errorMessage;
  final LoginModel? userModel;

 LoginPageState(
      {
      this.role,
      this.username,
        this.isExist = false,
        this.submitStatus = FormzSubmissionStatus.initial,
        this.userModel,
        this.errorMessage});

 LoginPageState copyWith(
      {FormzSubmissionStatus? submitStatus,
        bool? isExist,
        String? role,
        MandatoryFieldValidator? username,
        LoginModel? userModel,
        String? errorMessage}) {
    return LoginPageState(
        submitStatus: submitStatus ?? this.submitStatus,
        isExist: isExist ?? this.isExist,
        role: role ?? this.role,
        username: username ?? this.username,
        userModel: userModel ?? this.userModel,
        errorMessage: errorMessage);
  }

  @override
  List<Object> get props => [submitStatus];
}

class  LoginPageInitial extends LoginPageState {}