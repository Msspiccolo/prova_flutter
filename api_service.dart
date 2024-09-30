import 'dart:convert';
import 'package:http/http.dart' as http;
import 'produto.dart';

class ApiService {
  final String baseUrl = ' http://127.0.0.1:8000'; 

  Future<List<Produto>> fetchProdutos() async {
    final response = await http.get(Uri.parse('$baseUrl/produtos'));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((item) => Produto.fromJson(item)).toList();
    } else {
      throw Exception('Falha ao carregar produtos');
    }
  }
}
