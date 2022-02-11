import 'dart:convert';

import 'package:daryo_app_clone/models/articles.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final String _apiKey = '&apiKey=491be5669c9a4f7fb5a1dce87e3df129';
  final String _country = 'country=';
  final String _host = 'https://newsapi.org/v2/top-headlines?';

  Future<List<Articles>> getFromApi(String country) async {
    var uri = '$_host$_country=$country$_apiKey';

    var url = Uri.parse(uri);
    final response = await http.get(url);
    final request = jsonDecode(response.body)['articles'] as List;

    final res = request.map((e) => Articles.fromJson(e)).toList();
    return res;
  }
}
