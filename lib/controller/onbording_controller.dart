import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/core/services/service.dart';
import 'package:shoping_app/data/data_source/static.dart';
import 'package:shoping_app/route/routsname.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  MyServices myServices = Get.find();
  @override
  next() {
    currentPage++;
    if (currentPage >= onBordingList.length) {
      // myServices.sharedPreferences.setBool("onBording", true);
      Get.offAllNamed(AppRote.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
