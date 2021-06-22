class Movie {
  final int id;
  final String originalTitle;
  final String overView;
  final String vote;
  final imageUrl;
  final bannerUrl;

  Movie(
      {required this.id,
      required this.originalTitle,
      required this.overView,
      required this.vote,
      required this.imageUrl,
      required this.bannerUrl});
}
