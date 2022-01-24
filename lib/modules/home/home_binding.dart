import 'package:calculadora_moedas/data/providers/api.dart';
import 'package:calculadora_moedas/modules/home/home_controller.dart';
import 'package:calculadora_moedas/modules/home/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(
        homeRepository: HomeRepository(
          apiClient: MyApiClient(
            httpClient: Dio(),
          ),
        ),
      ),
    );
  }
}
