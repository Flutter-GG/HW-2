class Blog {
  int? authorId;
  String? authorName;
  String? authorProfilePhoto;
  String? blogImage;
  String? blogTitle;
  String? blogDescription;
  String? blogContent;
  int? userId;
  String? userName;
  String? userProfilePhoto;
  bool? bookmark;

  Blog(
      {this.authorId,
      this.authorName,
      this.authorProfilePhoto,
      this.blogImage,
      this.blogTitle,
      this.blogDescription,
      this.blogContent,
      this.userId,
      this.userName,
      this.userProfilePhoto,
      this.bookmark});

  Blog.fromJson(Map<String, dynamic> json) {
    authorId = json['author_id'];
    authorName = json['author_name'];
    authorProfilePhoto = json['author_profile_photo'];
    blogImage = json['blog_image'];
    blogTitle = json['blog_title'];
    blogDescription = json["blog_description"];
    blogContent = json['blog_content'];
    userId = json['user_id'];
    userName = json['user_name'];
    userProfilePhoto = json['user_profile_photo'];
    bookmark = json["bookmark"];
  }
}
