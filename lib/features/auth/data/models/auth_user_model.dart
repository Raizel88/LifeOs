import 'package:supabase_flutter/supabase_flutter.dart' hide AuthUser;
import '../../domain/entities/auth_user.dart';

/// Data model for the authenticated user, providing mapping from Supabase.
class AuthUserModel {
  final String id;
  final String email;
  final String? displayName;
  final String? photoUrl;
  final DateTime createdAt;

  const AuthUserModel({
    required this.id,
    required this.email,
    this.displayName,
    this.photoUrl,
    required this.createdAt,
  });

  /// Creates an [AuthUserModel] from a Supabase [User].
  factory AuthUserModel.fromSupabaseUser(User user) {
    return AuthUserModel(
      id: user.id,
      email: user.email ?? '',
      displayName: user.userMetadata?['display_name'] as String?,
      photoUrl: user.userMetadata?['photo_url'] as String?,
      createdAt: DateTime.parse(user.createdAt),
    );
  }

  /// Converts the model to a domain [AuthUser] entity.
  AuthUser toEntity() {
    return AuthUser(
      id: id,
      email: email,
      displayName: displayName,
      photoUrl: photoUrl,
      createdAt: createdAt,
    );
  }
}
