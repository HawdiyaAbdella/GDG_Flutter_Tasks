import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/app_drawer.dart';
import 'news_detail_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: dummyNews.length,
        itemBuilder: (ctx, index) {
          final news = dummyNews[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                  NewsDetailPage.routeName,
                  arguments: news,
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                    child: Image.network(
                      news.imageUrl,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (ctx, error, stackTrace) =>
                          const SizedBox(height: 200, child: Center(child: Icon(Icons.broken_image))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          news.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          news.shortDescription,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
