import 'package:e_commerce_getx/utils/constants/colors.dart';
import 'package:e_commerce_getx/utils/helper/helper_functions.dart';

import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
            color: dark ? TColors.darkGrey : TColors.grey,
          ),
        ),
        Text(text),
        Flexible(
          child: Divider(
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
            color: dark ? TColors.darkGrey : TColors.grey,
          ),
        ),
      ],
    );
  }
}
