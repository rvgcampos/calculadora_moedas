import 'package:calculadora_moedas/data/models/currency.dart';
import 'package:calculadora_moedas/data/providers/api.dart';

class HomeRepository {
  final MyApiClient apiClient;

  HomeRepository({required this.apiClient});

  Future<List<Currency>> getValue() {
    return apiClient.getValue();
  }
}
