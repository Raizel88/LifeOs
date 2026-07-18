import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_button.dart';
import '../../../../shared/widgets/life_divider.dart';
import '../../../../shared/widgets/life_scaffold.dart';
import '../../../../shared/widgets/life_text.dart';
import '../../../../shared/widgets/life_text_field.dart';
import '../providers/auth_providers.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginControllerProvider);

    return LifeScaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo Placeholder
              const Icon(
                Icons.eco,
                size: 80,
                color: LifeColors.primary,
              ),
              const SizedBox(height: LifeSpacing.xxl),
              const LifeText.headlineMedium(
                'Welcome to LifeOS',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: LifeSpacing.xxxl),
              const LifeTextField(
                label: 'Email',
                hint: 'your@email.com',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: LifeSpacing.l),
              LifeTextField(
                label: 'Password',
                hint: '••••••••',
                isPassword: _obscurePassword,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    color: LifeColors.textSecondary,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: LifeButton(
                  label: 'Forgot Password?',
                  variant: LifeButtonVariant.ghost,
                  onPressed: () => context.push('/forgot-password'),
                ),
              ),
              const SizedBox(height: LifeSpacing.xl),
              LifeButton(
                label: 'Login',
                isLoading: state.isLoading,
                onPressed: () {
                  // TODO: Implement login
                },
              ),
              const SizedBox(height: LifeSpacing.xl),
              const Row(
                children: [
                  Expanded(child: LifeDivider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: LifeSpacing.m),
                    child: LifeText.bodySmall('OR'),
                  ),
                  Expanded(child: LifeDivider()),
                ],
              ),
              const SizedBox(height: LifeSpacing.xl),
              LifeButton(
                label: 'Sign In with Google',
                variant: LifeButtonVariant.outlined,
                onPressed: () {
                  // TODO: Implement Google Sign In
                },
              ),
              const SizedBox(height: LifeSpacing.xxl),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LifeText.bodyMedium("Don't have an account? "),
                  LifeButton(
                    label: 'Register',
                    variant: LifeButtonVariant.ghost,
                    onPressed: () => context.push('/register'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
