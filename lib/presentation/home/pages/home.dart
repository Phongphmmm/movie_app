import 'package:blog_app/common/helper/navigation/app_navigation.dart';
import 'package:blog_app/common/widgets/appbar/app_bar.dart';
import 'package:blog_app/core/configs/assets/app_vectors.dart';
import 'package:blog_app/presentation/home/widgets/category_text.dart';
import 'package:blog_app/presentation/home/widgets/now_playing_movies.dart';
import 'package:blog_app/presentation/home/widgets/popular_tv.dart';
import 'package:blog_app/presentation/home/widgets/trending_movies.dart';
import 'package:blog_app/presentation/search/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        hideBack: true,
        action: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            AppNavigator.push(context, const SearchPage());
          },
        ),
        title: SvgPicture.asset(
          AppVectors.logo,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryText(title: 'Trendings'),
            TrendingMovies(),
            SizedBox(
              height: 16,
            ),
            CategoryText(title: 'Now Playing'),
            NowPlayingMovies(),
            SizedBox(
              height: 16,
            ),
            CategoryText(title: 'Popular TV'),
            SizedBox(
              height: 16,
            ),
            PopularTv(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
