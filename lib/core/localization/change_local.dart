// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/core/constant/theam-data.dart';
// import 'package:flutter_application_1/core/service/my_service.dart';
// import 'package:get/get.dart';

// class LocaleController extends GetxController {
//   Locale? language;
//   MyService myService = Get.find();
//   ThemeData appTheme = englisTheam;

//   changeLocal(String langCode) {
//     Locale local = Locale(langCode);
//     myService.sharedPreferences.setString("lang", langCode);
//     appTheme = langCode == "ar" ? aradicTheam : englisTheam;
//     Get.updateLocale(local);
//     Get.changeTheme(appTheme);
//   }

//   @override
//   void onInit() {
//     super.onInit();
//     var sharedprefLag = myService.sharedPreferences.getString("lang");
//     if (sharedprefLag == "ar") {
//       language = const Locale("ar");
//       appTheme = aradicTheam;
//     } else if (sharedprefLag == "en") {
//       language = const Locale("en");
//       appTheme = englisTheam;
//     }
//     {
//       language = Locale(Get.deviceLocale!.languageCode);
//       appTheme = englisTheam;
//     }
//   }
// }
