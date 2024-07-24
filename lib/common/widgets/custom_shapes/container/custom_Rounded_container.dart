import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer({
    super.key,
    this.height,
    this.width,
    this.child,
    this.margin,
    this.padding,
    this.radius = TSizes.cardRadiusLg,
    this.backgroundColor = TColors.white,
    this.showBorder = false,
    this.borderColor = TColors.borderPrimary,
  });
  final double? height, width;
  final double radius;
  final Widget? child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? backgroundColor, borderColor;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor!) : null,
      ),
      child: child,
    );
  }
}
