import 'package:e_commerce_getx/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce_getx/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_getx/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:e_commerce_getx/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:e_commerce_getx/common/widgets/text/heading_section.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //Header>>>>
          PrimaryHeaderContainer(
            child: Column(
              children: [
                CustomAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),
                const UserProfileTile(),
                const SizedBox(height: TSizes.spaceBtwSections)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const SectionHeading(
                  text: 'Account Settings',
                  showActionButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const SettingsMenuTile(
                  title: 'My Addresses',
                  supTitle: 'set shopping delivery adresses',
                  icon: Iconsax.safe_home,
                ),
                const SettingsMenuTile(
                  title: 'My Cart',
                  supTitle: 'add, remove products and move to checkout',
                  icon: Iconsax.shopping_cart,
                ),
                const SettingsMenuTile(
                  title: 'MY Order',
                  supTitle: 'In-progress and Complete Orders',
                  icon: Iconsax.bag_tick,
                ),
                const SettingsMenuTile(
                  title: 'Bank Account',
                  supTitle: 'Withdrawe balance to registered bank account',
                  icon: Iconsax.bank,
                ),
                const SettingsMenuTile(
                  title: 'My Coupons',
                  supTitle: 'List of all discounted coupons',
                  icon: Iconsax.discount_shape,
                ),
                const SettingsMenuTile(
                  title: 'Notification',
                  supTitle: 'Set any kind of notification message',
                  icon: Iconsax.notification,
                ),
                const SettingsMenuTile(
                  title: 'Account Privacy',
                  supTitle: 'Manage data usage and connected accounts',
                  icon: Iconsax.security_card,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                const SectionHeading(text: 'App Settings', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                const SettingsMenuTile(
                  title: 'Load Data',
                  supTitle: 'Uploud data to your Cloud Firebase',
                  icon: Iconsax.document_upload,
                ),
                SettingsMenuTile(
                  title: 'Safe More',
                  supTitle: 'Search result is safe for all ages',
                  icon: Iconsax.security_user,
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),
                SettingsMenuTile(
                  title: 'Geolocation',
                  supTitle: 'Set recommendation based on location',
                  icon: Iconsax.location,
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                SettingsMenuTile(
                  title: 'HD Image Quality',
                  supTitle: 'Set image quality to be seen',
                  icon: Iconsax.image,
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                 const SizedBox(height: TSizes.spaceBtwSections),
                 SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){}, child: const Text( 'Logout')),
                 )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
