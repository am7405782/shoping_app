import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shoping_app/core/constant/color.dart';
import 'package:shoping_app/data/data_source/static.dart';
import 'package:shoping_app/view/widgets/onbording/onbording_button.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotControllerOnBoarding(),
                  Spacer(
                    flex: 2,
                  ),
                  OnBordingButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
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
              Gap(60),
              Text(onBordingList[index].title!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1),
              const Gap(20),
              Text(onBordingList[index].body!,
                  style: Theme.of(context).textTheme.bodyText1),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onBordingList.length,
            (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  margin: const EdgeInsets.all(3),
                  height: 6,
                  width: 6,
                )),
      ],
    );
  }
}
