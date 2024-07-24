import 'package:e_commerce_getx/features/auth/view/login/login.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final pageController = PageController();
  static OnboardingController get instance => Get.find();
  RxInt currentIndex = 0.obs;
  void updatePageIndictor(index) => currentIndex.value = index;
  void dotNavigationClick(index) {
    currentIndex.value = index;
    pageController.jumpTo(index);
  }

  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(
        () =>  LoginScreen(),
      );
    } else {
      int page = currentIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
}
