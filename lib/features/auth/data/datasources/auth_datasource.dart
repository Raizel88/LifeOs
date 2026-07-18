import '../models/auth_user_model.dart';

/// Interface for the authentication data source.
abstract class AuthDataSource {
  /// Retrieves the currently authenticated user model.
  Future<AuthUserModel?> getCurrentUser();

  /// Authenticates with email and password.
  Future<AuthUserModel> login(String email, String password);

  /// Registers a new user with email, password, and name.
  Future<AuthUserModel> register(String email, String password, String name);

  /// Signs out the current user.
  Future<void> logout();

  /// Checks if a user is currently logged in.
  Future<bool> isLoggedIn();
}
