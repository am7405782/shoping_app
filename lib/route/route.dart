import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shoping_app/route/routsname.dart';
import 'package:shoping_app/view/pages/onbording_page.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: AppRote.onbording,
    page: () => const OnBordingScreen(),
  ),
];
