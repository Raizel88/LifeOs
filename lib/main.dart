import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/router.dart';
import 'core/error_handler.dart';
import 'design_system/life_theme.dart';
import 'services/hive_service.dart';
import 'services/logger_service.dart';
import 'services/supabase_service.dart';

void main() async {
  // 1. Flutter Binding
  WidgetsFlutterBinding.ensureInitialized();

  // 2. dotenv
  await dotenv.load();

  // 3. Hive
  await HiveService.initialize();

  // 4. Supabase
  await SupabaseService.initialize();

  // 5. Logger
  LoggerService.i('App initialized');

  // Global Error Handler
  GlobalErrorHandler.initialize();

  // 6. ProviderScope
  runApp(
    const ProviderScope(
      child: LifeApp(),
    ),
  );
}

/// The root widget of the LifeOS application.
class LifeApp extends StatelessWidget {
  const LifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: LifeTheme.darkTheme,
      routerConfig: goRouter,
    );
  }
}
