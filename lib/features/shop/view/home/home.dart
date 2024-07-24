import 'package:e_commerce_getx/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_getx/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_getx/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_getx/common/widgets/products_cart/vertical_product_card.dart';
import 'package:e_commerce_getx/common/widgets/text/heading_section.dart';
import 'package:e_commerce_getx/features/shop/view/home/widgets/home_appbar.dart';
import 'package:e_commerce_getx/features/shop/view/home/widgets/home_categories.dart';
import 'package:e_commerce_getx/features/shop/view/home/widgets/promo_slider.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/image_strings.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  //APPBar------>>>>>>>>>>>
                  HomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //SEARCHBAR-------->>>>>>>>>>>>
                  CustomSearchBar(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //Categories------------->>>>>>>>>
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //HEADER------->>>>>>>>>>>>>>>
                        SectionHeading(
                            text: 'Populer Categories',
                            showActionButton: false,
                            textColor: TColors.white),
                        SizedBox(height: TSizes.spaceBtwItems),
                        //Category List------>>>>>
                        HomeCategoies(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            //BODY--------------->>>>>>>
            //PromoSlider>>
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  //Heading Title>>>>>>
                  const SectionHeading(text: 'Populer Products'),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  //Grid vertical Productcard>>>
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const VerticalProductCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
