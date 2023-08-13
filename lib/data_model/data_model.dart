class Blogs {
  int? userID;
  String? author;
  String? title;
  String? summary;
  String? content;
  String? date;
  String? userImg;
  String? img;

  Blogs(
      {this.userID,
      this.author,
      this.title,
      this.summary,
      this.content,
      this.date,
      this.userImg,
      this.img});

  Blogs.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    author = json['author'];
    title = json['title'];
    summary = json['summary'];
    content = json['content'];
    date = json['date'];
    userImg = json['userImg'];
    img = json['img'];
  }

}