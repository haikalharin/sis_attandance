part of 'login_page_bloc.dart';

@immutable
abstract class LoginPageEvent extends Equatable {
  const LoginPageEvent();

  @override
  List<Object> get props => [];
}

class UserNameInputEvent extends LoginPageEvent {
  final String username;
  const UserNameInputEvent(this.username);

  @override
  List<Object> get props => [];
}
