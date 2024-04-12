import 'package:flutter/material.dart';
import 'package:shoping_app/core/constant/color.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.3, vertical: 10),
        height: 40,
        width: double.infinity,
        color: AppColor.primaryColor,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
