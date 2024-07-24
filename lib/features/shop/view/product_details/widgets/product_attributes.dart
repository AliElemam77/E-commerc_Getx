import 'package:e_commerce_getx/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce_getx/common/widgets/custom_shapes/container/custom_Rounded_container.dart';
import 'package:e_commerce_getx/common/widgets/text/heading_section.dart';
import 'package:e_commerce_getx/common/widgets/text/product_price_title.dart';
import 'package:e_commerce_getx/common/widgets/text/product_title_text.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';

import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        CustomRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(
                    text: 'Variation ',
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          ProductTitleText(
                            title: 'Price : ',
                            smTitle: true,
                          ),
                          SizedBox(width: TSizes.spaceBtwItems),
                          ProductPriceText(
                            price: '25',
                            lineThrough: true,
                          ),
                          SizedBox(width: TSizes.spaceBtwItems),
                          ProductPriceText(
                            price: '20',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock :',
                            smTitle: true,
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const ProductTitleText(
                title:
                    'This is the Description of the Product and it can go up to max 4 lines.',
                smTitle: true,
                maxLine: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(text: 'Colors', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    selected: true, text: 'Orange', onSelected: (value) {}),
                TChoiceChip(
                    selected: false, text: 'Green', onSelected: (value) {}),
                TChoiceChip(
                    selected: false, text: 'Yellow', onSelected: (value) {})
              ],
            )
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(text: 'Sizes', showActionButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    selected: true, text: 'EU 24', onSelected: (value) {}),
                TChoiceChip(
                    selected: false, text: 'EU 36', onSelected: (value) {}),
                TChoiceChip(
                    selected: false, text: 'EU 38', onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
