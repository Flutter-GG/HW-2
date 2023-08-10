class Blog {
  String id;
  String title;
  DateTime date;
  String author;
  String content;
  String image;
  String subject;
  String min;

  Blog(
      {required this.id,
      required this.title,
      required this.date,
      required this.author,
      required this.content,
      required this.image,
      required this.subject,
      required this.min});

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
      id: json["id"],
      title: json["title"],
      date: DateTime.parse(json["date"]),
      author: json["author"],
      content: json["content"],
      image: json["image"],
      subject: json["subject"],
      min: json["min"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "author": author,
        "content": content,
        "image": image,
        "subject": subject,
        "min": min
      };
}
