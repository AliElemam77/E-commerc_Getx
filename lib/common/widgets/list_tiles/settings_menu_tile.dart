import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile({
    super.key,
    required this.title,
    required this.supTitle,
    required this.icon,
    this.trailing,
    this.onTap,
  });
  final String title, supTitle;
  final Widget? trailing;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon, size: 28, color: TColors.primary),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Text(
          supTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        trailing: trailing,
      ),
    );
  }
}
