// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix/core/extension/context_extension.dart';

class ComingSoonWidget extends StatelessWidget {
  final List? comingSoon;
  final int index;
  const ComingSoonWidget(
      {super.key, required this.comingSoon, required this.index});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    const String imageUrl = 'https://image.tmdb.org/t/p/w500';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.network(
            (imageUrl + comingSoon?[index]["poster_path"]),
            width: context.width,
            height: context.height * 0.3,
            fit: BoxFit.contain,
            alignment: Alignment.centerLeft,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            comingSoon?[index]['release_date'] ?? "",
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  comingSoon?[index]['original_title'] ?? "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.notification_add_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Remind me",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Info",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 12,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 5),
          child: Text(
            comingSoon?[index]['overview'] ?? "",
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, right: 5),
          child: Text(
            comingSoon?[index]['vote_average'].toString() ?? "",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
