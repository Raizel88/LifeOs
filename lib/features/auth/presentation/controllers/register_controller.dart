import 'package:flutter_riverpod/flutter_riverpod.dart';

/// State for the registration process.
class RegisterState {
  final bool isLoading;
  final String? errorMessage;

  RegisterState({this.isLoading = false, this.errorMessage});

  RegisterState copyWith({bool? isLoading, String? errorMessage}) {
    return RegisterState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

/// Controller for the RegisterPage.
class RegisterController extends StateNotifier<RegisterState> {
  RegisterController() : super(RegisterState());

  Future<void> register(String name, String email, String password) async {
    throw UnimplementedError('register not implemented yet');
  }

  Future<void> signUpWithGoogle() async {
    throw UnimplementedError('signUpWithGoogle not implemented yet');
  }
}
