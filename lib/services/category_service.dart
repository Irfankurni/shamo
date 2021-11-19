import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shamo/models/category_model.dart';

class CategoryService {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<List<CategoryModel>> getCategories() async {
    var url = '$baseUrl/categories';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<CategoryModel> categories = [];

      for (var item in data) {
        categories.add(CategoryModel.fromJson(item));
        categories.sort((CategoryModel a, CategoryModel b) =>
            a.createdAt.compareTo(b.createdAt));
      }

      return categories;
    } else {
      throw Exception('Gagal Get Categories!');
    }
  }
}
