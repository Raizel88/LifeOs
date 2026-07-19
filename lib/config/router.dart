import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/presentation/pages/forgot_password_page.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/auth/presentation/pages/register_page.dart';
import '../features/auth/presentation/providers/auth_state_provider.dart';
import '../features/dashboard/presentation/pages/dashboard_page.dart';
import '../features/developer/developer_page.dart';
import '../features/journal/presentation/pages/journal_page.dart';
import '../features/navigation/presentation/widgets/main_navigation_shell.dart';
import '../features/onboarding/onboarding_page.dart';
import '../features/profile/presentation/pages/profile_page.dart';
import '../features/settings/settings_page.dart';
import '../features/splash/splash_page.dart';
import '../features/stats/presentation/pages/stats_page.dart';
import '../features/tasks/presentation/pages/tasks_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordPage(),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => MainNavigationShell(child: child),
        routes: [
          GoRoute(
            path: '/dashboard',
            builder: (context, state) => const DashboardPage(),
          ),
          GoRoute(
            path: '/tasks',
            builder: (context, state) => const TasksPage(),
          ),
          GoRoute(
            path: '/stats',
            builder: (context, state) => const StatsPage(),
          ),
          GoRoute(
            path: '/journal',
            builder: (context, state) => const JournalPage(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfilePage(),
          ),
        ],
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsPage(),
      ),
      GoRoute(
        path: '/developer',
        builder: (context, state) => const DeveloperPage(),
      ),
    ],
    redirect: (context, state) {
      final status = authState.status;
      
      // Still checking authentication
      if (status == AuthStatus.initial) {
        return null;
      }

      final loggingIn = state.matchedLocation == '/login' ||
          state.matchedLocation == '/register' ||
          state.matchedLocation == '/forgot-password' ;

      if (status == AuthStatus.unauthenticated) {
        // If not authenticated and not already going to an auth page, redirect to login
        return loggingIn ? null : '/login';
      }

      if (status == AuthStatus.authenticated) {
        // If authenticated and trying to go to an auth page, redirect to dashboard
        return loggingIn ? '/dashboard' : null;
      }

      return null;
    },
  );
});
