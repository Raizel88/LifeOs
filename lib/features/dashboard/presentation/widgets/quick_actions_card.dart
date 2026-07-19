import 'package:flutter/material.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_card.dart';
import '../../../../shared/widgets/life_text.dart';

class QuickActionsCard extends StatelessWidget {
  const QuickActionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LifeText.titleLarge('Quick Actions'),
        const SizedBox(height: LifeSpacing.l),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          mainAxisSpacing: LifeSpacing.m,
          crossAxisSpacing: LifeSpacing.m,
          childAspectRatio: 1.5,
          children: const [
            _QuickActionButton(
              icon: Icons.task_alt,
              label: "Today\u0027s Tasks",
            ),
            _QuickActionButton(
              icon: Icons.repeat,
              label: 'Habits',
            ),
            _QuickActionButton(
              icon: Icons.book_outlined,
              label: 'Journal',
            ),
            _QuickActionButton(
              icon: Icons.center_focus_strong,
              label: 'Focus Mode',
            ),
          ],
        ),
      ],
    );
  }
}

class _QuickActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _QuickActionButton({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return LifeCard(
      padding: LifeSpacing.edgeInsetsAllM,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: LifeColors.primary),
          const SizedBox(height: LifeSpacing.s),
          LifeText.bodySmall(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
