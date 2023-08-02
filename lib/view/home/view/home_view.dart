import 'package:flutter/material.dart';
import 'package:netflix/core/base/view/base_view.dart';
import 'package:netflix/core/extension/context_extension.dart';
import 'package:netflix/view/home_play/view/home_play_view.dart';
import '../../../product/api/api_init.dart';
import '../../../product/widgets/home_category.dart';
import '../../../product/widgets/home_label.dart';
import '../../../product/widgets/homepage_appbar.dart';
import '../../home_films/view/home_films_view.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../home_films/view/home_tv_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl = 'https://image.tmdb.org/t/p/w500';

    return BaseView<Api>(
        viewModel: Api(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (context, model) => Observer(builder: (_) {
              return model.loading
                  ? const Center(child: CircularProgressIndicator())
                  : Scaffold(
                      backgroundColor: Colors.black,
                      body: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: context.height * 0.65,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(imageUrl +
                                        model.trendingmovies
                                            ?.first['poster_path']),
                                    fit: BoxFit.cover),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: context.height * 0.65,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.black.withOpacity(0.5),
                                            Colors.black.withOpacity(0.1),
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      const HomePageAppBar(),
                                      const HomeCategory(),
                                      HomeLabel(
                                        title: model.trendingmovies
                                                ?.first['title'] ??
                                            "",
                                      ),
                                      const HomePlayView(),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: context.height * 0.05,
                            ),
                            HomeFilmsView(
                              label: "Popular Now",
                              filmList: model.topratedmovies ?? [],
                            ),
                            HomeFilmsView(
                              label: "Trending Now",
                              filmList: model.trendingmovies ?? [],
                            ),
                            HomeTvView(
                              label: "Netflix Originals",
                              filmList: model.tvEpisodes ?? [],
                            ),
                          ],
                        ),
                      ),
                    );
            }));
  }
}
