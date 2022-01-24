import 'package:calculadora_moedas/modules/home/home_binding.dart';
import 'package:calculadora_moedas/modules/home/home_screen.dart';
import 'package:calculadora_moedas/routes/routes.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
