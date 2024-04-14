import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shoping_app/controller/onbording_controller.dart';
import 'package:shoping_app/data/data_source/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      controller: controller.pageController,
      itemCount: onBordingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Column(
            children: [
              Image.asset(
                onBordingList[index].image!,
                width: Get.width / 1.3,
                fit: BoxFit.fill,
              ),
              const Gap(60),
              Text(onBordingList[index].title!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1),
              const Gap(20),
              Text(onBordingList[index].body!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ],
      ),
    );
  }
}
