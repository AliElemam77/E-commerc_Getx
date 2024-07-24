import 'package:e_commerce_getx/features/auth/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_getx/features/auth/view/onboarding/widgets/onboading_skip.dart';
import 'package:e_commerce_getx/features/auth/view/onboarding/widgets/onboarding_dot.dart';
import 'package:e_commerce_getx/features/auth/view/onboarding/widgets/onboarding_next.dart';
import 'package:e_commerce_getx/features/auth/view/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_getx/utils/constants/image_strings.dart';
import 'package:e_commerce_getx/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndictor,
            children: [
              OnboardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnboardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnboardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3),
            ],
          ),
          const OnboardingSkip(),
          const OnboardingDotNavigation(),
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
