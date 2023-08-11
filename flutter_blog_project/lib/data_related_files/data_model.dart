class BlogModel {
  int postId;
  String title;
  String content;
  String image;
  String date;
  String authorName;
  int userId;
  int password;

  BlogModel(
      {required this.postId,
      required this.title,
      required this.content,
      required this.image,
      required this.date,
      required this.authorName,
      required this.userId,
      this.password = 1234});

  factory BlogModel.fromJson(Map json) {
    return BlogModel(
        postId: json['postId'],
        title: json['title'],
        content: json['content'],
        image: json['image'],
        date: json['date'],
        authorName: json['authorName'],
        userId: json['userId']);
  }
}
