class BlogDataModel {
  String id;
  String title;
  String dateBlog;
  String author;
  String authorImage;
  String content;
  String image;
  String subject;

  BlogDataModel({
    required this.id,
    required this.title,
    required this.dateBlog,
    required this.author,
    required this.authorImage,
    required this.content,
    required this.image,
    required this.subject,
  });

  factory BlogDataModel.fromJson(Map<String, dynamic> json) => BlogDataModel(
        id: json["id"],
        title: json["title"],
        dateBlog: json["dateBlog"],
        author: json["author"],
        authorImage: json["authorImage"],
        content: json["content"],
        image: json["image"],
        subject: json["subject"],
      );
}
