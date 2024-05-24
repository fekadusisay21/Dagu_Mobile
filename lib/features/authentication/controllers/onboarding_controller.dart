import 'package:dagu/features/authentication/views/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator (index) => currentPageIndex.value = index;

  void dotNavigationClick (index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
  void nextPage() {
    if(currentPageIndex.value == 2) {
      Get.offAll(const LoginView());
    } else {
      int page = currentPageIndex.value ++;
      pageController.jumpToPage(page);
    }
  }
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}