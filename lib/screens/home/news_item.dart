import 'package:daryo_app_clone/models/news.dart';
import 'package:daryo_app_clone/screens/Details/DetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsItem extends StatelessWidget {
  final Articles article;


 const NewsItem({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dateParsed = DateTime.tryParse(article.publishedAt);
    dateParsed = dateParsed ?? DateTime.now();
    String publishDate = DateFormat('dd-mm, yyyy').format(dateParsed).toString();
    String publishTime = DateFormat('hh:mm').format(dateParsed).toString();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(article: article)));
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  article.source.name,
                  style:
                     const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$publishDate | $publishTime ',
                      style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                    Icon(
                      Icons.visibility,
                      color: Colors.blue[300],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(article.urlToImage?? article.defaultImagelink,
                    width: 120, height: 80),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Text(
                    article.title,
                    style:
                        const TextStyle(fontWeight: FontWeight.w500, height: 1.2),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
