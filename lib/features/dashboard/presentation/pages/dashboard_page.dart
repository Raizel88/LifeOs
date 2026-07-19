import 'package:flutter/material.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_scaffold.dart';
import '../widgets/attribute_preview_card.dart';
import '../widgets/daily_quote_card.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/quick_actions_card.dart';
import '../widgets/task_preview_card.dart';
import '../widgets/welcome_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LifeScaffold(
      // Persistent navigation is now handled by MainNavigationShell
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: LifeSpacing.xxl),
            DashboardHeader(),
            SizedBox(height: LifeSpacing.xxxl),
            WelcomeCard(),
            SizedBox(height: LifeSpacing.xxl),
            DailyQuoteCard(),
            SizedBox(height: LifeSpacing.xxl),
            QuickActionsCard(),
            SizedBox(height: LifeSpacing.xxl),
            TaskPreviewCard(),
            SizedBox(height: LifeSpacing.xxl),
            AttributePreviewCard(),
            SizedBox(height: LifeSpacing.massive),
          ],
        ),
      ),
    );
  }
}
