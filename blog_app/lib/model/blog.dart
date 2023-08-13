class Blog {
  int? psotId;
  String? postTitle;
  String? postImage;
  String? post;
  String? authorName;
  String? authorImage;
  String? timeForReading;
  String? postCreateDate;
  bool? bookMarked;

  Blog(
      {this.psotId,
      this.postTitle,
      this.postImage,
      this.post,
      this.authorName,
      this.authorImage,
      this.timeForReading,
      this.postCreateDate,
      this.bookMarked});

  Blog.fromJson(Map<String, dynamic> json) {
    psotId = json['psotId'];
    postTitle = json['postTitle'];
    postImage = json['postImage'];
    post = json['post'];
    authorName = json['authorName'];
    authorImage = json['authorImage'];
    timeForReading = json['timeForReading'];
    postCreateDate = json['postCreateDate'];
    bookMarked = json['bookMarked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['psotId'] = this.psotId;
    data['postTitle'] = this.postTitle;
    data['postImage'] = this.postImage;
    data['post'] = this.post;
    data['authorName'] = this.authorName;
    data['authorImage'] = this.authorImage;
    data['timeForReading'] = this.timeForReading;
    data['postCreateDate'] = this.postCreateDate;
    data['bookMarked'] = this.bookMarked;
    return data;
  }
}
