import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// variables
  final pageController = PageController();
  final currentPageIndex = 0.obs;

  void updatePageIndicator(index) {}

  void dotNavigationClick(index) {}

  void nextPage() {}

  void skipPage() {}
}
