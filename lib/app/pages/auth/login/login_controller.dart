// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:dw9_delivery/app/core/exceptions/unauthorized_exceptions.dart';
import 'package:dw9_delivery/app/repositories/auth/auth_repository.dart';

import 'login_state.dart';

class LoginController extends Cubit<LoginState> {
  final AuthRepository authRepository;

  LoginController(this.authRepository) : super(LoginState.initial());

  Future<void> login(String email, String password) async {
    try {
      emit(state.copyWith(status: LoginStatus.login));
      final authModel = await authRepository.login(email, password);
      final sp = await SharedPreferences.getInstance();
      sp.setString('accessToken', authModel.accessToken);
      sp.setString('refreshToken', authModel.refreshToken);
    } on UnauthorizedExceptions catch (e, s) {
      log('Login ou senha inválidos', error: e, stackTrace: s);
      emit(state.copyWith(
          status: LoginStatus.loginError,
          errorMessage: 'Login ou senha inválidos'));
    } catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      emit(state.copyWith(
          status: LoginStatus.error, errorMessage: 'Erro ao realizar login'));
    }
  }
}
