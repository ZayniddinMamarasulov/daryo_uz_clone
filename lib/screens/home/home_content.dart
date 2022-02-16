import 'package:flutter/material.dart';
import '../../models/api_cliant.dart';
import '../../models/daryo_api_news.dart';
import 'news_item.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final _apiClient = ApiClient();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: FutureBuilder(
        future: _apiClient.getFromApi('ru'),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      NewsItem(article: snapshot.data[index] as Article),
                      const Divider(thickness: 1.0),
                    ],
                  );
                });
          } else {
            return Container();
          }
        },
      ),
    );
  }
}