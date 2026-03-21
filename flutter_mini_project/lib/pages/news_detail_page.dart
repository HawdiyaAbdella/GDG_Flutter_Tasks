import 'package:flutter/material.dart';
import '../models/news_item.dart';

class NewsDetailPage extends StatelessWidget {
  static const routeName = '/detail';

  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Extract arg
    final NewsItem news = ModalRoute.of(context)!.settings.arguments as NewsItem;

    return Scaffold(
      appBar: AppBar(
        title: Text(news.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              news.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (ctx, error, stackTrace) =>
                  const SizedBox(height: 250, child: Center(child: Icon(Icons.broken_image))),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    news.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                   Text(
                    news.category,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    news.fullDescription,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
