import 'package:e_commerce_getx/common/widgets/custom_shapes/container/custom_Rounded_container.dart';
import 'package:e_commerce_getx/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_getx/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
            viewportFraction: 1,
          ),
          items: banners.map((e) => RoundedImage(imageUrl: e)).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                CustomRoundedContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
