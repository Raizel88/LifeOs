import 'package:flutter/material.dart';
import '../../../../design_system/life_colors.dart';
import '../../../../design_system/life_spacing.dart';
import '../../../../shared/widgets/life_card.dart';
import '../../../../shared/widgets/life_text.dart';

class AttributePreviewCard extends StatelessWidget {
  const AttributePreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LifeText.titleLarge('Attributes'),
        SizedBox(height: LifeSpacing.l),
        LifeCard(
          child: Column(
            children: [
              _AttributeItem(label: 'Discipline', value: 0.80),
              SizedBox(height: LifeSpacing.l),
              _AttributeItem(label: 'Strength', value: 0.70),
              SizedBox(height: LifeSpacing.l),
              _AttributeItem(label: 'Knowledge', value: 0.65),
              SizedBox(height: LifeSpacing.l),
              _AttributeItem(label: 'Focus', value: 0.55),
            ],
          ),
        ),
      ],
    );
  }
}

class _AttributeItem extends StatelessWidget {
  final String label;
  final double value;

  const _AttributeItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LifeText.bodyMedium(label),
            LifeText.bodySmall('${(value * 100).toInt()}'),
          ],
        ),
        const SizedBox(height: LifeSpacing.s),
        ClipRRect(
          borderRadius: BorderRadius.circular(LifeSpacing.xs),
          child: LinearProgressIndicator(
            value: value,
            minHeight: 6,
            backgroundColor: LifeColors.surfaceVariant,
            valueColor: const AlwaysStoppedAnimation<Color>(LifeColors.primary),
          ),
        ),
      ],
    );
  }
}
// ignore_for_file: deprecated_member_use
