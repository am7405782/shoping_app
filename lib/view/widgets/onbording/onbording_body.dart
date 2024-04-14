import 'package:flutter/material.dart';
import 'package:shoping_app/view/widgets/onbording/onbording_bot.dart';
import 'package:shoping_app/view/widgets/onbording/onbording_button.dart';
import 'package:shoping_app/view/widgets/onbording/onbording_slider.dart';

class OnBordingBody extends StatelessWidget {
  const OnBordingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}
