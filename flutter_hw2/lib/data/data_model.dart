/* this is my data model */
class PostsDataModel {
  bool? isBookedmark;
  int? id;
  int? usedId;
  int? reactions;

  String? date;
  String? body;
  String? title;
  String? userName;
  String? postImage;
  String? readingTime;
  String? profileImage;

  PostsDataModel(
      {this.id,
      this.date,
      this.body,
      this.title,
      this.usedId,
      this.userName,
      this.reactions,
      this.postImage,
      this.readingTime,
      this.isBookedmark,
      this.profileImage});

  factory PostsDataModel.fromJson(Map json) {
    return PostsDataModel(
      id: json['id'],
      usedId: json['userId'],
      reactions: json['reactions'],
      title: json['title'],
      userName: json['userName'],
      body: json['body'],
      date: json['date'],
      postImage: json['post_image'],
      readingTime: json['reading_time'],
      profileImage: json['profile_image'],
      isBookedmark: json['readin_list'],
    );
  }
  void toggleBookmark() {
    isBookedmark = !isBookedmark!;
  }
}
