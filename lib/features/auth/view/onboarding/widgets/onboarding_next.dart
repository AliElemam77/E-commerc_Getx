import 'package:e_commerce_getx/features/auth/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/device/device_utility.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : TColors.black),
        onPressed: OnboardingController.instance.nextPage,
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
