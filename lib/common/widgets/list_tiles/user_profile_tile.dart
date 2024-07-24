import 'package:e_commerce_getx/common/widgets/images/circuler_image.dart';
import 'package:e_commerce_getx/features/personalization/view/profile/profile.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/image_strings.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CirculerImage(
        padding: 0,
        width: 50,
        height: 50,
        image: TImages.user,
      ),
      title: Text(
        'Ali Elemam- Flutter App',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'alielemam515@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: () => Get.to(const ProfilePage()),
        icon: const Icon(Iconsax.edit),
      ),
    );
  }
}
