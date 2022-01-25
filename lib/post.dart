class Post {
  String profileImageUrl;
  String comment;
  String articlePictureUrl;
  String timestamp;

  Post(
      {this.profileImageUrl,
        this.comment,
        this.articlePictureUrl,
        this.timestamp});

  Post.fromJson(Map<String, dynamic> json) {
    profileImageUrl = json['profileImageUrl'];
    comment = json['comment'];
    articlePictureUrl = json['articlePictureUrl'];
    timestamp = json['timestamp'];
  }
}