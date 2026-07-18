import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/auth_user_model.dart';
import 'auth_datasource.dart';

/// Implementation of [AuthDataSource] using Supabase.
class SupabaseAuthDataSource implements AuthDataSource {
  final SupabaseClient _client;

  SupabaseAuthDataSource(this._client);

  @override
  Future<AuthUserModel?> getCurrentUser() async {
    final user = _client.auth.currentUser;
    if (user == null) return null;
    return AuthUserModel.fromSupabaseUser(user);
  }

  @override
  Future<AuthUserModel> login(String email, String password) async {
    final response = await _client.auth.signInWithPassword(
      email: email,
      password: password,
    );
    if (response.user == null) {
      throw const AuthException('User not found after sign in');
    }
    return AuthUserModel.fromSupabaseUser(response.user!);
  }

  @override
  Future<AuthUserModel> register(String email, String password, String name) async {
    final response = await _client.auth.signUp(
      email: email,
      password: password,
      data: {'display_name': name},
    );
    if (response.user == null) {
      throw const AuthException('User not found after sign up');
    }
    return AuthUserModel.fromSupabaseUser(response.user!);
  }

  @override
  Future<void> logout() async {
    await _client.auth.signOut();
  }

  @override
  Future<bool> isLoggedIn() async {
    return _client.auth.currentSession != null;
  }
}
