import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shamo/models/product_model.dart';

class ProductService {
  String baseUrl = 'https://shamostore.my.id/api';

  Future<List<ProductModel>> getProducts() async {
    var url = Uri.parse('$baseUrl/products)';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    
  }
}
