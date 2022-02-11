class Articles {
  Source source;
  String title;
  String? description;
  String publishedAt;
  String url;
  String? urlToImage;

  final defaultImageLink =
      'https://s.daryo.uz/wp-content/uploads/2021/11/1-73.jpg';

  Articles(
      {required this.source,
      required this.title,
      required this.description,
      required this.publishedAt,
      required this.url,
      required this.urlToImage});

  factory Articles.fromJson(Map<String, dynamic> map) {
    return Articles(
      description: map['description'],
      publishedAt: map['publishedAt'],
      source: Source.fromJson(map['source']),
      title: map['title'],
      url: map['url'],
      urlToImage: map['urlToImage'],
    );
  }
}

class Source {
  String name;

  Source({required this.name});

  factory Source.fromJson(Map<String, dynamic> map) {
    return Source(
      name: map['name'],
    );
  }
}
