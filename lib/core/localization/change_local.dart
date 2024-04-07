import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shoping_app/core/constant/theam-data.dart';
import 'package:shoping_app/core/services/service.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myService = Get.find();
  ThemeData appTheme = englisTheam;

  changeLocal(String langCode) {
    Locale local = Locale(langCode);
    myService.sharedPreferences.setString("lang", langCode);
    appTheme = langCode == "ar" ? aradicTheam : englisTheam;
    Get.updateLocale(local);
    Get.changeTheme(appTheme);
  }

  @override
  void onInit() {
    super.onInit();
    var sharedprefLag = myService.sharedPreferences.getString("lang");
    if (sharedprefLag == "ar") {
      language = const Locale("ar");
      appTheme = aradicTheam;
    } else if (sharedprefLag == "en") {
      language = const Locale("en");
      appTheme = englisTheam;
    }
    {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = englisTheam;
    }
  }
}
