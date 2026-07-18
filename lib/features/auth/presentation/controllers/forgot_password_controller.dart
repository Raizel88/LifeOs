import 'package:flutter_riverpod/flutter_riverpod.dart';

/// State for the forgot password process.
class ForgotPasswordState {
  final bool isLoading;
  final String? errorMessage;
  final bool isSuccess;

  ForgotPasswordState({
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  ForgotPasswordState copyWith({
    bool? isLoading,
    String? errorMessage,
    bool? isSuccess,
  }) {
    return ForgotPasswordState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}

/// Controller for the ForgotPasswordPage.
class ForgotPasswordController extends StateNotifier<ForgotPasswordState> {
  ForgotPasswordController() : super(ForgotPasswordState());

  Future<void> resetPassword(String email) async {
    throw UnimplementedError('resetPassword not implemented yet');
  }
}
