import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';

class CirculerIcon extends StatelessWidget {
  const CirculerIcon({
    required this.icon,
    super.key,
    this.width,
    this.height,
    this.size,
    this.backgroundColor,
    this.color,
    this.onPressed,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : THelperFunctions.isDarkMode(context)
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
