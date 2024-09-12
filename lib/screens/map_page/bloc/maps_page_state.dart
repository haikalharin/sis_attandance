part of 'maps_page_bloc.dart';

class MapsPageState {
  final String? role;
  final String?  checkInTime;
  final MandatoryFieldValidator? username;
  final bool isExist;
  final FormzSubmissionStatus submitStatus;
  final String? errorMessage;
  final LoginModel? userModel;
  final AddressModel? addressModel;

 MapsPageState(
      {
      this.role,
      this.checkInTime,
      this.username,
        this.isExist = false,
        this.submitStatus = FormzSubmissionStatus.initial,
        this.userModel,
        this.addressModel,
        this.errorMessage});

 MapsPageState copyWith(
      {FormzSubmissionStatus? submitStatus,
        bool? isExist,
        String? role,
        String? checkInTime,
        MandatoryFieldValidator? username,
        LoginModel? userModel,
        AddressModel? addressModel,
        String? errorMessage}) {
    return MapsPageState(
        submitStatus: submitStatus ?? this.submitStatus,
        isExist: isExist ?? this.isExist,
        role: role ?? this.role,
        checkInTime: checkInTime ?? this.checkInTime,
        username: username ?? this.username,
        userModel: userModel ?? this.userModel,
        addressModel: addressModel ?? this.addressModel,
        errorMessage: errorMessage);
  }

  @override
  List<Object> get props => [submitStatus];
}

class  MapsPageInitial extends MapsPageState {}