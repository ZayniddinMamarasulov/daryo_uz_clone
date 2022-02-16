
import 'dart:convert';

import 'package:daryo_app_clone/models/FoodAll.dart';
import 'package:daryo_app_clone/models/daryo_api_news.dart';
import 'package:daryo_app_clone/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

List<DaryoNews> foods = [];
List<Food?>? food=[];

  getRecipes() async {
    String url = "https://api.edamam.com/api/food-database/v2/parser"
        "?app_id=4eeb32a2&app_key=9a413c7e0e45a49407a98cad32d609cd&ingr=Food";
    Uri myUri = Uri.parse(url);

    var response = await http.get(myUri);

   var foodAll=FoodAll.fromJson(jsonDecode(response.body));



   for (var element in foodAll.hints!) {
      food!.add(element.food);
   }


  }

  @override
  void initState() {
    super.initState();
    getRecipes();

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
