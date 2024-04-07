// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/core/constant/routsname.dart';
// import 'package:get/get.dart';
// import 'package:flutter_application_1/core/service/my_service.dart';

// class MyMiddleWare extends GetMiddleware {
//   MyService myService = Get.find();
//   @override
//   int? get priority => 1;

//   @override
//   RouteSettings? redirect(String? route) {
//     if (myService.sharedPreferences.getString("onbording") == "1") {
//       return const RouteSettings(name: AppRote.login);
//     }

//     return null;
//   }
// }

// class MyServices {}
