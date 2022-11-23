import 'package:financial_app/ui/validations/no_empty.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  void emailChanged(String value) {
    final NoEmpty email = NoEmpty.dirty(value);
    emit(state.copyWith(
      email: email,
      formzStatus: _verifyFormzStatus(email: email),
    ));
  }

  void passwordChanged(String value) {
    final NoEmpty password = NoEmpty.dirty(value);
    emit(state.copyWith(
      password: password,
      formzStatus: _verifyFormzStatus(password: password),
    ));
  }

  FormzStatus _verifyFormzStatus({
    NoEmpty? email,
    NoEmpty? password,
  }) {
    return Formz.validate([
      email ?? state.email,
      password ?? state.password,
    ]);
  }

}