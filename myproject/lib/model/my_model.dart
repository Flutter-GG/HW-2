class Blog {
  String id;
  String title;
  String author;
  String content;
  String image;
  String subject;
  String min;

  Blog(
      {required this.id,
      required this.title,
      required this.author,
      required this.content,
      required this.image,
      required this.subject,
      required this.min});

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
      id: json["id"],
      title: json["title"],
      author: json["author"],
      content: json["content"],
      image: json["image"],
      subject: json["subject"],
      min: json["min"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "author": author,
        "content": content,
        "image": image,
        "subject": subject,
        "min": min
      };
}
