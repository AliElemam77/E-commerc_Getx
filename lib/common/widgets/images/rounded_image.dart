import 'package:e_commerce_getx/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.applyImageRadius = true,
    this.isNetworkImage = false,
    this.backgroundColor,
    this.borderRadius = TSizes.md,
    this.padding,
    this.margin,
    this.border,
    this.onTap,
    required this.imageUrl,
  });
  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius, isNetworkImage;
  final BoxFit? fit;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxBorder? border;
  final void Function()? onTap;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
