class ArticleModel {
  String? author;
  String? title;
  String? desc;
  String? url;
  String? urlToImage;
  String? content;

  ArticleModel(
      {required this.author,
      required this.content,
      required this.desc,
      required this.title,
      required this.url,
      required this.urlToImage});
}
