import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/news_detail_page.dart';
import 'pages/categories_page.dart';
import 'pages/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (ctx) => const HomePage(),
        NewsDetailPage.routeName: (ctx) => const NewsDetailPage(),
        CategoriesPage.routeName: (ctx) => const CategoriesPage(),
        AboutPage.routeName: (ctx) => const AboutPage(),
      },
    );
  }
}
