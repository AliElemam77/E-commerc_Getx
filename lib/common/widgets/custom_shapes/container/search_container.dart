import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/device/device_utility.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal,
      this.showBorder = true,
      this.showBackground = true,
      this.onTap,
      this.padding =
          const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace)});
  final String text;
  final IconData? icon;
  final bool showBorder, showBackground;
  final void Function()? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? TColors.dark
                    : TColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: dark ? TColors.darkerGrey : Colors.grey,
              ),
              const SizedBox(width: TSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
