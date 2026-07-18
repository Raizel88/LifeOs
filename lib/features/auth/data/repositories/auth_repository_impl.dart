import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide AuthUser;
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/exceptions/auth_exception.dart';
import '../datasources/auth_datasource.dart';
import '../datasources/supabase_auth_datasource.dart';

/// Implementation of [AuthRepository] that connects to Supabase.
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _dataSource;

  AuthRepositoryImpl(this._dataSource);

  @override
  Future<AuthUser?> getCurrentUser() async {
    try {
      final model = await _dataSource.getCurrentUser();
      return model?.toEntity();
    } catch (e) {
      throw _handleException(e);
    }
  }

  @override
  Future<AuthUser> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final model = await _dataSource.login(email, password);
      return model.toEntity();
    } catch (e) {
      throw _handleException(e);
    }
  }

  @override
  Future<AuthUser> registerWithEmail({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final model = await _dataSource.register(email, password, name);
      return model.toEntity();
    } catch (e) {
      throw _handleException(e);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _dataSource.logout();
    } catch (e) {
      throw _handleException(e);
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    try {
      return await _dataSource.isLoggedIn();
    } catch (e) {
      return false;
    }
  }

  /// Maps [AuthException] and other errors to [AuthDomainException].
  Exception _handleException(dynamic e) {
    if (e is AuthException) {
      final message = e.message.toLowerCase();
      if (message.contains('invalid login credentials')) {
        return const InvalidCredentialsException();
      }
      if (message.contains('user already registered') || 
          message.contains('email already in use')) {
        return const EmailAlreadyInUseException();
      }
      if (message.contains('password should be at least')) {
        return const WeakPasswordException();
      }
      return AuthDomainException(e.message);
    }
    return UnknownAuthException(e.toString());
  }
}

// --- Providers ---

/// Provider for the Supabase Auth Data Source.
final supabaseAuthDataSourceProvider = Provider<AuthDataSource>((ref) {
  return SupabaseAuthDataSource(Supabase.instance.client);
});

/// Provider for the Auth Repository.
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dataSource = ref.watch(supabaseAuthDataSourceProvider);
  return AuthRepositoryImpl(dataSource);
});
