import 'package:e_commerce_getx/utils/constants/image_strings.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/constants/text_strings.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';

import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                width: THelperFunctions.screenWidth() * 0.6,
                image: const AssetImage(TImages.deliveredEmailIllustration),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(TTexts.done)),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              TextButton(
                  onPressed: () {}, child: const Text(TTexts.resendEmail))
            ],
          ),
        ),
      ),
    );
  }
}
