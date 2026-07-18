import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_app_bar.dart';
import '../../../../shared/widgets/life_button.dart';
import '../../../../shared/widgets/life_scaffold.dart';
import '../../../../shared/widgets/life_text.dart';
import '../../../../shared/widgets/life_text_field.dart';
import '../providers/auth_providers.dart';

class ForgotPasswordPage extends ConsumerWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(forgotPasswordControllerProvider);

    return LifeScaffold(
      appBar: const LifeAppBar(title: 'Forgot Password'),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const LifeText.bodyMedium(
                'Enter your email address and we will send you a link to reset your password.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: LifeSpacing.xxl),
              const LifeTextField(
                label: 'Email',
                hint: 'your@email.com',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: LifeSpacing.xxxl),
              LifeButton(
                label: 'Send Reset Link',
                isLoading: state.isLoading,
                onPressed: () {
                  // TODO: Implement reset password
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
