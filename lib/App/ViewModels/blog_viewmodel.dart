import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import '../Models/blog_model.dart';
import '../Models/user_model.dart';

class BlogViewModel with ChangeNotifier {
  final List<Blog> _blogs = [];

  List<Blog> get blogs => _blogs;

  BlogViewModel() {
    _loadBlogsFromAssets();
  }

  void addBlog(User writer, Blog blog) {
    _blogs.add(blog);
    writer.blogsWritten.add(blog);
    notifyListeners();
  }

  List<Blog> getAllBlogs() => _blogs;

  Blog? getBlogByTitle(String title) {
    return _blogs.firstWhere((blog) => blog.title == title,
        orElse: () => Blog(
            title: '',
            authorName: '',
            summary: '',
            content: [],
            date: '',
            writerUserId: 100,
            category: '',
            readingDuration: '',
            authorAvatar: ''));
  }

  void updateBlog(User writer, String originalTitle, Blog updatedBlog) {
    final blogToUpdate = getBlogByTitle(originalTitle);
    if (blogToUpdate != null && blogToUpdate.writerUserId == writer.userId) {
      final index = _blogs.indexOf(blogToUpdate);
      _blogs[index] = updatedBlog;
      notifyListeners();
    }
  }

  void deleteBlog(User writer, String title) {
    final blogToDelete = getBlogByTitle(title);
    if (blogToDelete != null && blogToDelete.writerUserId == writer.userId) {
      _blogs.remove(blogToDelete);
      writer.blogsWritten.remove(blogToDelete);
      notifyListeners();
    }
  }

  Future<void> _loadBlogsFromAssets() async {
    final jsonString = await rootBundle.loadString('assets/data/data.json');
    final decodedData = jsonDecode(jsonString);
    final List<Blog> loadedBlogs = (decodedData['blogs'] as List)
        .map((jsonBlog) => Blog.fromJson(jsonBlog))
        .toList();

    _blogs.addAll(loadedBlogs);
    notifyListeners();
  }

  List<Blog> searchBlogs(String searchTerm) {
    return _blogs.where((blog) {
      final lowerCaseTitle = blog.title.toLowerCase();
      return lowerCaseTitle.contains(searchTerm);
    }).toList();
  }
}
