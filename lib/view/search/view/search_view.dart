// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:netflix/core/base/view/base_view.dart';
import 'package:netflix/core/extension/context_extension.dart';
import 'package:netflix/product/api/api_init.dart';
import 'package:netflix/view/video_details/view/video_details_movie.dart';
import '../../../product/widgets/searchbar.dart';
import '../../../product/widgets/searched_item.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl = 'https://image.tmdb.org/t/p/w500';
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: BaseView<Api>(
            viewModel: Api(),
            onModelReady: (model) => model.init(),
            onPageBuilder: (context, model) => Observer(
              builder: (context) => Container(
                height: context.height,
                width: context.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: context.height * 0.04,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SearchBar(
                          onChanged: (query) =>
                              model.filterTopRatedMovies(query),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 20, bottom: 30),
                        child: Text(
                          "Top Searches",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: context.width,
                        height: context.height * 0.9,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: model.topratedmoviesSearch?.length ?? 0,
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return VideoDetailsMovieView(
                                      image: (imageUrl +
                                          model.topratedmoviesSearch?[index]
                                              ["poster_path"]),
                                      title: model.topratedmoviesSearch?[index]
                                              ['original_title'] ??
                                          "",
                                      detail: model.topratedmoviesSearch?[index]
                                              ['overview'] ??
                                          "",
                                      thdb: model.topratedmoviesSearch?[index]
                                                  ['vote_average']
                                              .toString() ??
                                          "",
                                    );
                                  }),
                                ),
                              );
                            }),
                            child: SearchedItems(
                              searched: model.topratedmoviesSearch,
                              index: index,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.1,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
