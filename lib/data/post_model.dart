class Post {
  int? id;
  String? author;
  String? avatar;
  String? title;
  String? category;
  String? post;
  int? userId;
  String? postImage;
  String? readingTime;
  String? date;
  bool? readingList;

  Post(
      {this.id,
      this.author,
      this.avatar,
      this.title,
      this.category,
      this.post,
      this.userId,
      this.postImage,
      this.readingTime,
      this.date,
      this.readingList});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    author = json['author'];
    avatar = json['avatar'];
    title = json['title'];
    category = json['category'];
    post = json['post'];
    userId = json['userId'];
    postImage = json['post_image'];
    readingTime = json['reading_time'];
    date = json['date'];
    readingList = json['reading_list'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['author'] = author;
    data['avatar'] = avatar;
    data['title'] = title;
    data['category'] = category;
    data['post'] = post;
    data['userId'] = userId;
    data['post_image'] = postImage;
    data['reading_time'] = readingTime;
    data['date'] = date;
    data['reading_list'] = readingList;
    return data;
  }
}
