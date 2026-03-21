import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class CategoriesPage extends StatelessWidget {
  static const routeName = '/categories';

  const CategoriesPage({super.key});

  final categories = const ['Technology', 'Sports', 'Business', 'Culture', 'Politics'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (ctx, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            elevation: 4,
            child: ListTile(
              contentPadding: const EdgeInsets.all(15),
              leading: const Icon(Icons.category, color: Colors.blue),
              title: Text(
                categories[index],
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Viewing items in ${categories[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
