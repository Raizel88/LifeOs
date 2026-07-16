import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Service to handle Supabase initialization and configuration.
class SupabaseService {
  SupabaseService._();

  /// Initializes Supabase with credentials from environment variables.
  static Future<void> initialize() async {
    final String url = dotenv.get('SUPABASE_URL');
    final String key = dotenv.get('SUPABASE_KEY');

    await Supabase.initialize(
      url: url,
      anonKey: key, // ignore: deprecated_member_use
    );
  }
}
