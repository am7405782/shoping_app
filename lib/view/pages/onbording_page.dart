import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/controller/onbording_controller.dart';
import 'package:shoping_app/core/constant/color.dart';
import 'package:shoping_app/view/widgets/onbording/onbording_body.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: OnBordingBody(),
      ),
    );
  }
}
