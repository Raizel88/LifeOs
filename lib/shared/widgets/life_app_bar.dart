import 'package:flutter/material.dart';
import '../../design_system/life_colors.dart';
import '../../design_system/life_typography.dart';

/// A production-grade reusable AppBar for LifeOS.
class LifeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool centerTitle;

  const LifeAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: LifeTypography.titleLarge,
      ),
      actions: actions,
      leading: leading,
      centerTitle: centerTitle,
      backgroundColor: LifeColors.background,
      elevation: 0,
      iconTheme: const IconThemeData(color: LifeColors.textPrimary),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
