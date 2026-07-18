import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

/// Implementation of [AuthRepository] placeholders.
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl();

  @override
  Future<AuthUser?> getCurrentUser() {
    throw UnimplementedError('getCurrentUser not implemented yet');
  }

  @override
  Future<bool> isLoggedIn() {
    throw UnimplementedError('isLoggedIn not implemented yet');
  }

  @override
  Future<AuthUser> registerWithEmail({
    required String email,
    required String password,
    required String name,
  }) {
    throw UnimplementedError('registerWithEmail not implemented yet');
  }

  @override
  Future<AuthUser> signInWithEmail({
    required String email,
    required String password,
  }) {
    throw UnimplementedError('signInWithEmail not implemented yet');
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError('signOut not implemented yet');
  }
}
