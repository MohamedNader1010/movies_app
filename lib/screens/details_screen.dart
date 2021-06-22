import 'package:flutter/material.dart';

import '../widgets/details_screen_layout.dart';

class DetailsScreen extends StatelessWidget {
  final bannerUrl;
  final vote;
  final overView;
  final originalTitle;

  const DetailsScreen(
      {required this.bannerUrl,
      required this.vote,
      required this.overView,
      required this.originalTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsScreenLayout(bannerUrl, vote, overView),
    );
  }
}
