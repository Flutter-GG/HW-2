class Product {
    String id;
    String title;
    String date;
    String author;
    String content;
    String image;
    String subject;

    Product({
        required this.id,
        required this.title,
        required this.date,
        required this.author,
        required this.content,
        required this.image,
        required this.subject,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        date: json["date"],
        author: json["author"],
        content: json["content"],
        image: json["image"],
        subject: json["subject"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "date": date,
        "author": author,
        "content": content,
        "image": image,
    };

}