import 'package:e_commerce_getx/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_getx/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_getx/features/auth/view/signUp/widgets/sign_up_form.dart';
import 'package:e_commerce_getx/utils/constants/sizes.dart';
import 'package:e_commerce_getx/utils/constants/text_strings.dart';


import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              const FormDivider(text: TTexts.orSignUpWith),
              const SizedBox(height: TSizes.spaceBtwSections),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
