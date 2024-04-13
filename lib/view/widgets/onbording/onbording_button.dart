import 'package:flutter/material.dart';
import 'package:shoping_app/core/constant/color.dart';

class OnBordingButton extends StatelessWidget {
  const OnBordingButton({
    super.key,
    this.onTap,
  });
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 40,
        child: MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
            textColor: Colors.white,
            onPressed: () {
              //  controller.next() ;
            },
            color: AppColor.primaryColor,
            child: const Text("Continue")),
      ),
    );
  }
}
