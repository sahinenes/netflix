import 'package:flutter/material.dart';
import 'package:netflix/core/base/view/base_view.dart';
import 'package:netflix/core/extension/context_extension.dart';
import 'package:netflix/view/video_details/view/video_details_movie.dart';

import '../../../product/api/api_init.dart';

class HomePlayView extends StatelessWidget {
  const HomePlayView({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl = 'https://image.tmdb.org/t/p/w500';
    return BaseView<Api>(
      onModelReady: (model) {
        model.init();
      },
      viewModel: Api(),
      onPageBuilder: (context, model) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Icon(
                Icons.add,
                color: Colors.white,
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              const Text(
                "My List",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) {
                    return VideoDetailsMovieView(
                      image: imageUrl +
                          model.trendingmovies?.first["backdrop_path"],
                      title: model.trendingmovies?.first["title"],
                      detail: model.trendingmovies?.first["overview"],
                      thdb: model.trendingmovies?.first["vote_average"]
                          .toString(),
                    );
                  }),
                ),
              ); 
            }),
            child: Container(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: const [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                    size: 27,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Play",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: const [
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "My List",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
