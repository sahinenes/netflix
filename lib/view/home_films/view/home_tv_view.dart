// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix/core/extension/context_extension.dart';

import '../../video_details/view/video_details_movie.dart';

class HomeTvView extends StatelessWidget {
  final String label;
  final List filmList;
  const HomeTvView({super.key, required this.label, required this.filmList});

  @override
  Widget build(BuildContext context) {
    const String imageUrl = 'https://image.tmdb.org/t/p/w500';
    return Container(
      width: context.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: context.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return VideoDetailsMovieView(
                          image: imageUrl + filmList[index]["backdrop_path"],
                          title: filmList[index]["original_name"],
                          detail: filmList[index]["overview"],
                          thdb: filmList[index]["vote_average"].toString(),
                        );
                      })));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: context.height * 0.3,
                        width: context.height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              imageUrl + filmList[index]["backdrop_path"],
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                itemCount: filmList.length,
              ),
            ),
          ),
          SizedBox(
            
            height: context.height * 0.1,
          )
        ],
      ),
    );
  }
}
