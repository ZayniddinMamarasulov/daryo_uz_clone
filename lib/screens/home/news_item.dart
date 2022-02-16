import 'package:daryo_app_clone/models/daryo_api_news.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
     DaryoNews? food;

  NewsItem({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Dunyo",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '${food.foodId} | ${food.label} | ',
                    style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                  Icon(
                    Icons.visibility,
                    color: Colors.blue[300],
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(food.watchCount.toString(),
                      style:
                          const TextStyle(color: Colors.blue, fontSize: 12.0))
                ],
              )
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(food.foodId!, width: 120, height: 80),
              const SizedBox(width: 12.0),
              Expanded(
                child: Text(
                  food.foodId!,
                  style:
                      const TextStyle(fontWeight: FontWeight.w500, height: 1.2),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
