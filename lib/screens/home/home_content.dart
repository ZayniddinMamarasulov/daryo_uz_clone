import 'package:daryo_app_clone/models/articles.dart';
import 'package:daryo_app_clone/screens/home/news_item.dart';
import 'package:daryo_app_clone/services/api_client.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final _apiClient = ApiClient();
  List<Articles> articles = [];

  @override
  void initState() {
    super.initState();
    getArticles();
  }

  Future<void> getArticles() async {
    articles = await _apiClient.getFromApi('ru');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: FutureBuilder(
        future: _apiClient.getFromApi('ru'),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      NewsItem(article: articles[index]),
                      const Divider(thickness: 1.0),
                    ],
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
