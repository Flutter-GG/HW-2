class User {
  String? author;
  String? avatar;
  int? userId;
  String? password;

  User({this.author, this.avatar, this.userId, this.password});

  User.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    avatar = json['avatar'];
    userId = json['userId'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['author'] = author;
    data['avatar'] = avatar;
    data['userId'] = userId;
    data['password'] = password;
    return data;
  }
}
