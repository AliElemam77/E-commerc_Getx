import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt carousalIndex = 0.obs;
  void updatePageIndicator(int index) {
    carousalIndex.value = index;
  }
}
