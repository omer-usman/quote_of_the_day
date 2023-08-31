class Quote {
  final String text;
  final String user;
  bool isLiked;
  int likes;
  final String url;
  Quote(
      {required this.text,
      required this.user,
      this.isLiked = false,
      this.likes = 0,
      required this.url});
}
