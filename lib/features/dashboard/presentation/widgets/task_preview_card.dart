import 'package:flutter/material.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../design_system/life_typography.dart';
import '../../../../shared/widgets/life_card.dart';
import '../../../../shared/widgets/life_text.dart';

class TaskPreviewCard extends StatelessWidget {
  const TaskPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LifeText.titleLarge("Today's Tasks"),
            TextButton(
              onPressed: () {},
              child: const LifeText.bodySmall('View All', color: LifeColors.primary),
            ),
          ],
        ),
        const SizedBox(height: LifeSpacing.s),
        const LifeCard(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              _TaskItem(label: 'Gym', isCompleted: true),
              Divider(height: 1, indent: LifeSpacing.l),
              _TaskItem(label: 'Flutter', isCompleted: false),
              Divider(height: 1, indent: LifeSpacing.l),
              _TaskItem(label: 'Read 20 pages', isCompleted: false),
              Divider(height: 1, indent: LifeSpacing.l),
              _TaskItem(label: 'Meditation', isCompleted: true),
            ],
          ),
        ),
      ],
    );
  }
}

class _TaskItem extends StatelessWidget {
  final String label;
  final bool isCompleted;

  const _TaskItem({required this.label, required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: LifeSpacing.l,
        vertical: LifeSpacing.m,
      ),
      child: Row(
        children: [
          Icon(
            isCompleted ? Icons.check_circle : Icons.circle_outlined,
            color: isCompleted ? LifeColors.success : LifeColors.textHint,
            size: 20,
          ),
          const SizedBox(width: LifeSpacing.m),
          Expanded(
            child: LifeText(
              label,
              color: isCompleted ? LifeColors.textSecondary : LifeColors.textPrimary,
              style: isCompleted
                  ? LifeTypography.bodyMedium.copyWith(decoration: TextDecoration.lineThrough)
                  : LifeTypography.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
