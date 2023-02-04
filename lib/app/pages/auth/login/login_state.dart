// Rodar o builder runner para gerar classe Match (flutter pub run build_runner watch -d)

import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

part 'login_state.g.dart';

@match
enum LoginStatus { initial, login, success, loginError, error }

class LoginState extends Equatable {
  final LoginStatus status;
  final String? errorMessage;

  LoginState({
    required this.status,
    this.errorMessage,
  });

  LoginState.initial()
      : status = LoginStatus.initial,
        errorMessage = null;

  @override
  List<Object?> get props => [status];

  LoginState copyWith({
    LoginStatus? status,
    String? errorMessage,
  }) {
    return LoginState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
