import 'package:e_commerce_getx/common/widgets/appbar/custom_appbar.dart';
import 'package:e_commerce_getx/common/widgets/appbar/tab_bar.dart';
import 'package:e_commerce_getx/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_getx/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce_getx/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_getx/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:e_commerce_getx/common/widgets/text/heading_section.dart';
import 'package:e_commerce_getx/features/shop/view/shop/widgets/category_tab.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';

import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartCounterIcon(
              onPressed: () {},
              iconColor: dark ? TColors.white : TColors.dark,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  expandedHeight: 488,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const CustomSearchBar(
                          text: 'Search in store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        const SectionHeading(text: 'Featured Brands'),
                        const SizedBox(height: TSizes.spaceBtwItems / 2),
                        GridLayout(
                            mainAxisExtent: 80,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return const TBrandCard(
                                showBorder: false,
                              );
                            }),
                      ],
                    ),
                  ),
                  bottom: const TTabBar(
                    tabs: [
                      Tab(child: Text('Sports')),
                      Tab(child: Text('Furniture')),
                      Tab(child: Text('Electronics')),
                      Tab(child: Text('Clothes')),
                      Tab(child: Text('Cosmetics')),
                    ],
                  )),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
