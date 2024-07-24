import 'package:e_commerce_getx/common/widgets/text/heading_section.dart';
import 'package:e_commerce_getx/features/shop/view/product_details/widgets/botton_add_to_cart.dart';
import 'package:e_commerce_getx/features/shop/view/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_getx/features/shop/view/product_details/widgets/product_image_slider.dart';
import 'package:e_commerce_getx/features/shop/view/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_getx/features/shop/view/product_details/widgets/rate_and_share.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const ButtonAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const RateAndShare(),
                  const ProductMetaData(),
                  const ProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SectionHeading(
                      text: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This product description for Blue Nike sleeve lest vest. There are more things that can be add ............... iam not a young boy but iam a bi big big man fuck you ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: '  Show more',
                    trimExpandedText: '  Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                  ),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(
                          text: 'Review (199)', showActionButton: false),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
