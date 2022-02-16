import 'dart:convert';
import 'package:http/http.dart' as http;

import 'daryo_api_news.dart';

class ApiClient {
  final String _apiKey = '&apiKey=491be5669c9a4f7fb5a1dce87e3df129';
  final String _country = 'country=';
  final String _host = 'https://newsapi.org/v2/top-headlines?';

  Future<List<Article>> getFromApi(String country) async {
    var uri = '$_host$_country$country$_apiKey';

    var url = Uri.parse(uri);
    final response = await http.get(url);

    final request = jsonDecode(response.body)['articles'] as List; // List<Map<String, dynamic>>

    print(request);

    final res = request.map((e) => Article.fromJson(e)).toList(); // List<Articles>
    return res;
  }

}