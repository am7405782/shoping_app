import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/core/localization/change_local.dart';
import 'package:shoping_app/core/localization/translation.dart';
import 'package:shoping_app/core/services/service.dart';
import 'package:shoping_app/route/route.dart';
import 'package:shoping_app/view/pages/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: controller.appTheme,
      home: const Language(),
      getPages: route,
    );
  }
}
