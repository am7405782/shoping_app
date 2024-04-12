import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shoping_app/core/localization/change_local.dart';
import 'package:shoping_app/route/routsname.dart';
import 'package:shoping_app/view/widgets/language_widgets/language_Button.dart';

class LanguageBody extends GetView<LocaleController> {
  const LanguageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Choose Language",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const Gap(10),
          LanguageButton(
            text: "En",
            onTap: () {
              controller.changeLocal("en");
              Get.toNamed(AppRote.onbording);
            },
          ),
          LanguageButton(
            text: "Ar",
            onTap: () {
                controller.changeLocal("ar");
              Get.toNamed(AppRote.onbording);
            },
          ),
        ],
      ),
    );
  }
}
