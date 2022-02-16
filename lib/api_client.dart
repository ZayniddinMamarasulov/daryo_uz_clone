import 'dart:convert';
import 'package:daryo_app_clone/models/news.dart';
import 'package:http/http.dart'as http;

import 'models/news.dart';


class ApiClient{
    final String _apikey = '&apiKey = 7c4fde365a14427291a87754b38bbc30';
    final String _country = 'country=';
    final String _host = 'https://newsapi.org/v2/top-headlines?';



  Future<List<Articles>> getFromApi(String country)async{
    var uri = '$_host$_country$country$_apikey';
    var url=Uri.parse(uri);
    final response= await http.get(url);
    final request =jsonDecode(response.body)['articles']as List;

    print(request);

    final res = request.map((e) => Articles.fromJson(e)).toList();
    return res;
  }


}