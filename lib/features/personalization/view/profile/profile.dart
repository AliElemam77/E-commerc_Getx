import 'package:e_commerce_getx/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce_getx/common/widgets/images/circuler_image.dart';
import 'package:e_commerce_getx/common/widgets/text/heading_section.dart';
import 'package:e_commerce_getx/features/personalization/view/profile/widgets/profile_menu.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/image_strings.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: dark ? TColors.white : TColors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CirculerImage(
                        image: TImages.user, width: 90, height: 90),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const SectionHeading(
                  text: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              const ProfileMenu(title: 'Name', value: 'Ali Elemam'),
              const ProfileMenu(title: 'Username', value: 'Ali_Elemam_77'),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const SectionHeading(
                  text: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),
              const ProfileMenu(title: 'User ID', value: '45689'),
              const ProfileMenu(title: 'E-mail', value: 'Ali_Elemam@>>>>>'),
              const ProfileMenu(title: 'Phone Number', value: '1234568888'),
              const ProfileMenu(title: 'Gender', value: 'Male'),
              const ProfileMenu(title: 'Date of Birth', value: '1, Ag, 2002'),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
