import '../entities/auth_user.dart';

/// Contract for authentication operations.
abstract class AuthRepository {
  /// Retrieves the currently authenticated user, if any.
  Future<AuthUser?> getCurrentUser();

  /// Authenticates a user using email and password.
  Future<AuthUser> signInWithEmail({
    required String email,
    required String password,
  });

  /// Registers a new user with email, password, and name.
  Future<AuthUser> registerWithEmail({
    required String email,
    required String password,
    required String name,
  });

  /// Signs out the current user.
  Future<void> signOut();

  /// Checks if a user is currently logged in.
  Future<bool> isLoggedIn();
}
