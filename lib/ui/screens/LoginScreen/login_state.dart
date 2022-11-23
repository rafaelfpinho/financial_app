import 'package:equatable/equatable.dart';
import 'package:financial_app/ui/validations/no_empty.dart';
import 'package:formz/formz.dart';

enum LoginStatus { initial, inProgress, failed, success }

class LoginState extends Equatable {

  const LoginState({
    this.email = const NoEmpty.pure(),
    this.password = const NoEmpty.pure(),
    this.formzStatus = FormzStatus.pure,
    this.loginStatus = LoginStatus.initial
  });

  final FormzInput email;
  final FormzInput password;
  final FormzStatus formzStatus;
  final LoginStatus loginStatus;

  @override
  List<Object> get props =>
      [email, password, formzStatus, loginStatus];

  LoginState copyWith({
    NoEmpty? email,
    NoEmpty? password,
    FormzStatus? formzStatus,
    LoginStatus? loginStatus,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      formzStatus: formzStatus ?? this.formzStatus,
      loginStatus: loginStatus ?? this.loginStatus
    );
  }
}