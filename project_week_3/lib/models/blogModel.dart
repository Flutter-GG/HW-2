class BlogModel {
  int Userid;
  String postTitle;
  String description;
  int likes;
  String images;
  bool bookmark;
  String subject;

  BlogModel(
      {required this.Userid,
      required this.postTitle,
      required this.description,
      required this.likes,
      required this.images,
      required this.bookmark,
      required this.subject});

  factory BlogModel.fromJson(Map json) {
    return BlogModel(
      Userid: json['Userid'],
      postTitle: json['postTitle'],
      description: json['description'],
      likes: json['likes'],
      images: json['images'],
      bookmark: json['bookmark'],
      subject: json['subject'],
    );
  }
}
