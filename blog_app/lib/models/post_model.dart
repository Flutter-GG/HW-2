class PostModel {
  int? id;
  int? userId;
  String? url;
  String? title;
  String? creationDate;
  String? description;

  PostModel(
      {this.id,
      this.userId,
      this.url,
      this.title,
      this.creationDate,
      this.description});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    url = json['url'];
    title = json['title'];
    creationDate = json['creation_date'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['url'] = this.url;
    data['title'] = this.title;
    data['creation_date'] = this.creationDate;
    data['description'] = this.description;
    return data;
  }
}