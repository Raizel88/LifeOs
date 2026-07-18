import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/login_controller.dart';
import '../controllers/register_controller.dart';
import '../controllers/forgot_password_controller.dart';

final loginControllerProvider =
    StateNotifierProvider<LoginController, LoginState>((ref) {
  return LoginController();
});

final registerControllerProvider =
    StateNotifierProvider<RegisterController, RegisterState>((ref) {
  return RegisterController();
});

final forgotPasswordControllerProvider =
    StateNotifierProvider<ForgotPasswordController, ForgotPasswordState>((ref) {
  return ForgotPasswordController();
});
