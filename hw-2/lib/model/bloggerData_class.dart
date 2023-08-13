class Posts {
  int? id;
  String? title;
  String? body;
  int? likes;
  bool? isBookmark;
  String? thumbnail;
  List<String>? images;

  Posts(
      {this.id,
      this.title,
      this.body,
      this.likes,
      this.isBookmark,
      this.thumbnail,
      this.images});

  Posts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    likes = json['likes'];
    isBookmark = json['isBookmark'];
    thumbnail = json['thumbnail'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    data['likes'] = this.likes;
    data['isBookmark'] = this.isBookmark;
    data['thumbnail'] = this.thumbnail;
    data['images'] = this.images;
    return data;
  }
}

class PostsData {
  List<Posts>? posts;

  PostsData({this.posts});

  PostsData.fromJson(Map<String, dynamic> json) {
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts!.add(new Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.posts != null) {
      data['posts'] = this.posts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
