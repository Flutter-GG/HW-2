import 'dart:convert';
import 'package:flutter/services.dart';

class Blog {
  final String title;
  final String authorName;
  final String authorAvatar;
// Add this
  final String summary;
  final List<Map<String, String>> content;
  final String date;
  final int writerUserId;
  final String category;
  final String readingDuration;

  Blog({
    required this.title,
    required this.authorName,
    required this.authorAvatar, // Add this
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
      authorAvatar: json['authorAvatar'] ?? 'assets/default_avatar.jpg',
      summary: json['summary'],
      content: List<Map<String, String>>.from(
          json['content'].map((item) => Map<String, String>.from(item))),
      date: json['date'],
      writerUserId: json['writerUserId'],
      category: json['category'],
      readingDuration: json['readingDuration'],
    );
  }

  Future<List<Blog>> loadBlogsFromAssets() async {
   
    final jsonString = await rootBundle.loadString('assets/data/data.json');

  
    final decodedData = jsonDecode(jsonString);

   
    final List<Blog> blogs = (decodedData['blogs'] as List)
        .map((jsonBlog) => Blog.fromJson(jsonBlog))
        .toList();

    return blogs;
  }
}
