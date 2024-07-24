import 'package:e_commerce_getx/common/widgets/brands/brand_show_case.dart';
import 'package:e_commerce_getx/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_getx/common/widgets/products_cart/vertical_product_card.dart';
import 'package:e_commerce_getx/common/widgets/text/heading_section.dart';
import 'package:e_commerce_getx/utils/constants/image_strings.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TBrandShowCase(
                images: [
                  TImages.productImage3,
                  TImages.productImage2,
                  TImages.productImage1,
                ],
              ),
              const TBrandShowCase(
                images: [
                  TImages.productImage3,
                  TImages.productImage2,
                  TImages.productImage1,
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              const SectionHeading(text: 'You might like'),
              const SizedBox(height: TSizes.spaceBtwItems),
              GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const VerticalProductCard()),
              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
