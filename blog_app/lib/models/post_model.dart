class PostModel {
  int? id;
  int? userId;
  String? url;
  String? description;
  String? creationDate;

  PostModel(
      {this.id, this.userId, this.url, this.description, this.creationDate});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    url = json['url'];
    description = json['description'];
    creationDate = json['creation_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['url'] = this.url;
    data['description'] = this.description;
    data['creation_date'] = this.creationDate;
    return data;
  }
}