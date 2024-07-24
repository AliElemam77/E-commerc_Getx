import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';

import 'package:flutter/material.dart';

class CirculerImage extends StatelessWidget {
  const CirculerImage({
    super.key,
    required this.image,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
    this.fit = BoxFit.cover,
    this.backgroundColor,
    this.ovrelayColor,
    this.isNetworkImage = false,
  });
  final double width, height, padding;
  final Color? backgroundColor, ovrelayColor;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ?? (dark ? TColors.black : TColors.white),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: ovrelayColor,
        ),
      ),
    );
  }
}
