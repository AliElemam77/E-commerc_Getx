import 'package:e_commerce_getx/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/constants/image_strings.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';

import 'package:flutter/material.dart';

class HomeCategoies extends StatelessWidget {
  const HomeCategoies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return VerticalImageText(
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.dark
                : TColors.white,
            text: 'Shoes',
            image: TImages.shoeIcon,
            onTap: () {},
          );
        },
      ),
    );
  }
}
