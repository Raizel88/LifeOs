import 'package:flutter/material.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_scaffold.dart';
import '../../../../shared/widgets/life_text.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LifeScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bar_chart, size: 64, color: LifeColors.primary),
            SizedBox(height: LifeSpacing.l),
            LifeText.titleLarge('Stats'),
            SizedBox(height: LifeSpacing.s),
            LifeText.bodySmall('Track your progress over time'),
          ],
        ),
      ),
    );
  }
}
