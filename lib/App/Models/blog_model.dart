class Blog {
  final String title;
  final String authorName;
  final String summary;
  final List<Map<String, String>> content;
  final String date;
  final int writerUserId;
  final String category;
  final String readingDuration;

  Blog({
    required this.title,
    required this.authorName,
    required this.summary,
    required this.content,
    required this.date,
    required this.writerUserId,
    required this.category,
    required this.readingDuration,
  });

  // Conversion from JSON to Dart Object
  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      title: json['title'],
      authorName: json['authorName'],
      summary: json['summary'],
      content: List<Map<String, String>>.from(json['content'].map((item) => Map<String, String>.from(item))),
      date: json['date'],
      writerUserId: json['writerUserId'],
      category: json['category'],
      readingDuration: json['readingDuration'],
    );
  }
}
