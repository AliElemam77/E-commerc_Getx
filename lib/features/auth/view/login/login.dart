import 'package:e_commerce_getx/common/style/spacing_style.dart';
import 'package:e_commerce_getx/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_getx/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_getx/features/auth/view/login/widgets/login_form.dart';
import 'package:e_commerce_getx/features/auth/view/login/widgets/login_header.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const LoginHeader(),
              const SizedBox(height: TSizes.spaceBtwSections * 0.3),
              LoginForm(),
              const FormDivider(text: TTexts.orSignInWith),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
