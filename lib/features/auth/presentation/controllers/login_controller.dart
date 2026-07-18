import 'package:flutter_riverpod/flutter_riverpod.dart';

/// State for the login process.
class LoginState {
  final bool isLoading;
  final String? errorMessage;

  LoginState({this.isLoading = false, this.errorMessage});

  LoginState copyWith({bool? isLoading, String? errorMessage}) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

/// Controller for the LoginPage.
class LoginController extends StateNotifier<LoginState> {
  LoginController() : super(LoginState());

  Future<void> signIn(String email, String password) async {
    throw UnimplementedError('signIn not implemented yet');
  }

  Future<void> signInWithGoogle() async {
    throw UnimplementedError('signInWithGoogle not implemented yet');
  }
}
