import 'package:calculadora_moedas/modules/home/home_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepository;

  HomeController({required this.homeRepository});
  final reaisController = TextEditingController().obs;
  final dolarController = TextEditingController().obs;
  final euroController = TextEditingController().obs;

  getValue(String? value, String type) async {
    final listObj = await homeRepository.getValue();
    final dolarObj = listObj[0];
    final euroObj = listObj[1];

    var reaisText = reaisController.value.text.replaceAll(',', '.');
    var dolarText = dolarController.value.text.replaceAll(',', '.');
    var euroText = euroController.value.text.replaceAll(',', '.');
    if (type == 'R') {
      dolarController.value.text =
          ((double.parse(reaisText)) / (dolarObj.value!)).toStringAsFixed(2);
      euroController.value.text =
          ((double.parse(reaisText)) / (euroObj.value!)).toStringAsFixed(2);
    }
    if (type == 'D') {
      reaisController.value.text =
          ((double.parse(dolarText)) * (dolarObj.value!)).toStringAsFixed(2);
      euroController.value.text =
          ((double.parse(dolarText)) * (dolarObj.value!) / (euroObj.value!))
              .toStringAsFixed(2);
    }
    if (type == 'E') {
      reaisController.value.text =
          ((double.parse(euroText)) * (euroObj.value!)).toStringAsFixed(2);
      dolarController.value.text =
          ((double.parse(euroText)) * (euroObj.value!) / (dolarObj.value!))
              .toStringAsFixed(2);
    }
  }
}
