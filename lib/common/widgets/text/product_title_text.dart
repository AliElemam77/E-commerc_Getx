import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.title,
    this.smTitle = false,
    this.maxLine = 2,
    this.textAlign = TextAlign.left,
  });
  final String title;
  final bool smTitle;
  final TextAlign? textAlign;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smTitle
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      textAlign: textAlign,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
    );
  }
}
