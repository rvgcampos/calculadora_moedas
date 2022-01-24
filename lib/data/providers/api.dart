import 'package:calculadora_moedas/data/models/currency.dart';
import 'package:dio/dio.dart';

const baseUrl = 'https://api.hgbrasil.com/finance?format=json';

class MyApiClient {
  final Dio httpClient;

  MyApiClient({required this.httpClient});

  Future<List<Currency>> getValue() async {
    try {
      var response = await httpClient.get(baseUrl);
      var responseData = response.data as Map<String, dynamic>;
      var moedas = responseData['results']['currencies'] as Map;

      final dolar = Currency.fromJson(moedas['USD']);
      final euro = Currency.fromJson(moedas['EUR']);

      List<Currency> moedasObj = <Currency>[];
      moedasObj.add(dolar);
      moedasObj.add(euro);
      return moedasObj;
    } catch (_) {
      return [];
    }
  }
}
