class Post {
  int id;
  String userName;
  String userPhoto;
  DateTime postSendDate;
  String postText;
  //image urlImage olmalı. Şimdilik String yapıyorum.
  String postImage;
  int postLikeNumber;
  int postCommentNumber;
  String postUrl;

  Post(
      {this.id,
      this.userName,
      this.userPhoto,
      this.postSendDate,
      this.postText,
      this.postImage,
      this.postLikeNumber,
      this.postCommentNumber,
      this.postUrl});
}
