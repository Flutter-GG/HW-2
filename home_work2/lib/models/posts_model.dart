class Posts {
  int? id;
  String? title;
  String? body;
  int? userId;
  String? image;
  List<String>? tags;
  int? reactions;

  Posts(
      {this.id,
      this.title,
      this.body,
      this.userId,
      this.image,
      this.tags,
      this.reactions});

  Posts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    body = json['body'];
    userId = json['userId'];
    image = json['image'];
    tags = json['tags'].cast<String>();
    reactions = json['reactions'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    data['userId'] = this.userId;
    data['image'] = this.image;
    data['tags'] = this.tags;
    data['reactions'] = this.reactions;
    return data;
  }
}