class NewsItem {
  final String id;
  final String title;
  final String shortDescription;
  final String fullDescription;
  final String imageUrl;
  final String category;

  const NewsItem({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.fullDescription,
    required this.imageUrl,
    required this.category,
  });
}
