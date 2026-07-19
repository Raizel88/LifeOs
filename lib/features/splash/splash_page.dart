import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../design_system/life_colors.dart';
import '../../design_system/life_spacing.dart';
import '../../shared/widgets/life_loading_indicator.dart';
import '../../shared/widgets/life_scaffold.dart';
import '../../shared/widgets/life_text.dart';
import '../auth/presentation/providers/auth_state_provider.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to auth state to trigger redirects via GoRouter redirect logic
    ref.listen(authStateProvider, (previous, next) {
      // GoRouter handles the redirection based on authStateProvider status
    });

    return const LifeScaffold(
      useSafeArea: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.eco,
              size: 100,
              color: LifeColors.primary,
            ),
            SizedBox(height: LifeSpacing.xxl),
            LifeText.headlineMedium('LifeOS'),
            SizedBox(height: LifeSpacing.massive),
            LifeLoadingIndicator(),
          ],
        ),
      ),
    );
  }
}
