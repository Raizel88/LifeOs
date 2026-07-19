import 'package:flutter/material.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_scaffold.dart';
import '../../../../shared/widgets/life_text.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LifeScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.task_alt, size: 64, color: LifeColors.primary),
            SizedBox(height: LifeSpacing.l),
            LifeText.titleLarge('Tasks'),
            SizedBox(height: LifeSpacing.s),
            LifeText.bodySmall('Manage your daily goals'),
          ],
        ),
      ),
    );
  }
}
