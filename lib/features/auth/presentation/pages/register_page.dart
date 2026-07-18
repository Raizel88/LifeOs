import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_app_bar.dart';
import '../../../../shared/widgets/life_button.dart';
import '../../../../shared/widgets/life_divider.dart';
import '../../../../shared/widgets/life_scaffold.dart';
import '../../../../shared/widgets/life_text.dart';
import '../../../../shared/widgets/life_text_field.dart';
import '../providers/auth_providers.dart';

class RegisterPage extends ConsumerWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerControllerProvider);

    return LifeScaffold(
      appBar: const LifeAppBar(title: 'Create Account'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: LifeSpacing.xxl),
            const LifeText.headlineMedium(
              'Join LifeOS',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: LifeSpacing.xxxl),
            const LifeTextField(
              label: 'Full Name',
              hint: 'John Doe',
            ),
            const SizedBox(height: LifeSpacing.l),
            const LifeTextField(
              label: 'Email',
              hint: 'your@email.com',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: LifeSpacing.l),
            const LifeTextField(
              label: 'Password',
              hint: '••••••••',
              isPassword: true,
            ),
            const SizedBox(height: LifeSpacing.l),
            const LifeTextField(
              label: 'Confirm Password',
              hint: '••••••••',
              isPassword: true,
            ),
            const SizedBox(height: LifeSpacing.xxxl),
            LifeButton(
              label: 'Register',
              isLoading: state.isLoading,
              onPressed: () {
                // TODO: Implement register
              },
            ),
            const SizedBox(height: LifeSpacing.xl),
            const LifeDivider(),
            const SizedBox(height: LifeSpacing.xl),
            LifeButton(
              label: 'Sign Up with Google',
              variant: LifeButtonVariant.outlined,
              onPressed: () {
                // TODO: Implement Google Sign Up
              },
            ),
            const SizedBox(height: LifeSpacing.xxl),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LifeText.bodyMedium('Already have an account? '),
                LifeButton(
                  label: 'Login',
                  variant: LifeButtonVariant.ghost,
                  onPressed: () => context.pop(),
                ),
              ],
            ),
            const SizedBox(height: LifeSpacing.xxl),
          ],
        ),
      ),
    );
  }
}
