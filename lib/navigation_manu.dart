import 'package:e_commerce_getx/features/personalization/view/settings/settings.dart';
import 'package:e_commerce_getx/features/shop/view/favorite/favorite.dart';
import 'package:e_commerce_getx/features/shop/view/home/home.dart';
import 'package:e_commerce_getx/features/shop/view/shop/shop.dart';
import 'package:iconsax/iconsax.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NavigationManu extends StatelessWidget {
  const NavigationManu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) =>
              controller.selectedIndex.value = value,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        (() => controller.screens[controller.selectedIndex.value]),
      ),
    );
  }
}

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List screens = [
    const HomePage(),
    const StorePage(),
    const FavoritePage(),
    const SettingsPage(),
  ];
}
