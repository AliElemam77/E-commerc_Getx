import 'package:e_commerce_getx/common/widgets/Icons/ciculer_icon.dart';
import 'package:e_commerce_getx/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce_getx/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_getx/common/widgets/products_cart/vertical_product_card.dart';
import 'package:e_commerce_getx/features/shop/view/home/home.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'WishList',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          CirculerIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomePage()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                itemCount: 3,
                itemBuilder: (_, index) => const VerticalProductCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
