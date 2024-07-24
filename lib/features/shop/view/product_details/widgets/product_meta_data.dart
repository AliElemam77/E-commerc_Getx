import 'package:e_commerce_getx/common/widgets/custom_shapes/container/custom_Rounded_container.dart';
import 'package:e_commerce_getx/common/widgets/images/circuler_image.dart';
import 'package:e_commerce_getx/common/widgets/text/brand_title_icon_verify.dart';
import 'package:e_commerce_getx/common/widgets/text/product_price_title.dart';
import 'package:e_commerce_getx/common/widgets/text/product_title_text.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/enums.dart';
import 'package:e_commerce_getx/utils/constants/image_strings.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                vertical: TSizes.xs,
                horizontal: TSizes.sm,
              ),
              child: Text(
                '78%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const ProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        const ProductTitleText(title: 'Green Nike sports shoe'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
         Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)

          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            CirculerImage(
              width: 32,
              height: 32,
              image: TImages.shoeIcon,
              ovrelayColor: dark ? TColors.white : TColors.black,
            ),
            const BrandTitleWithVerifyIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            )
          ],
        )
      ],
    );
  }
}
