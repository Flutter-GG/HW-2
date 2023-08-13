class BlogModel {
  int postId;
  String title;
  String content;
  String image;
  String date;
  String authorName;
  String avatarImg;
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
      this.avatarImg =
          "https://png.pngtree.com/png-vector/20190223/ourmid/pngtree-vector-avatar-icon-png-image_695765.jpg",
      this.password = 1234});

  factory BlogModel.fromJson(Map json) {
    return BlogModel(
        postId: json['postId'],
        title: json['title'],
        content: json['content'],
        image: json['image'],
        date: json['date'],
        authorName: json['authorName'],
        avatarImg: json['avatarImg'],
        userId: json['userId']);
  }
}
