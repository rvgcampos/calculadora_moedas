import 'package:brasil_fields/brasil_fields.dart';
import 'package:calculadora_moedas/modules/home/components/text_form_field_custom.dart';
import 'package:calculadora_moedas/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo_home.png'),
        backgroundColor: const Color(0xFFC1007E),
        title: Text(
          'Conversor de Moedas',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Image.asset('assets/images/home.png'),
                  ),
                  TextFormFieldCustom(
                    labelText: 'Reais',
                    prefixText: 'R\$',
                    controller: controller.reaisController.value,
                    onChanged: (value) {
                      controller.getValue(value, 'R');
                    },
                  ),
                  TextFormFieldCustom(
                    labelText: 'Dólares',
                    prefixText: 'US\$',
                    controller: controller.dolarController.value,
                    onChanged: (value) {
                      controller.getValue(value, 'D');
                    },
                  ),
                  TextFormFieldCustom(
                    labelText: 'Euros',
                    prefixText: '€',
                    controller: controller.euroController.value,
                    onChanged: (value) {
                      controller.getValue(value, 'E');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
