// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:netflix/core/extension/context_extension.dart';
import '../../../product/widgets/helper.dart';

class VideoDetailsMovieView extends StatelessWidget {
  final String? image;
  final String? title;
  final String? detail;
  final String? thdb;
  const VideoDetailsMovieView(
      {super.key,
      required this.image,
      required this.title,
      required this.detail,
      required this.thdb});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helper.detailsAppBar,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: context.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image ?? ""), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: context.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                title ?? "",
                style: const TextStyle(
                    height: 1.5,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "THDB $thdb",
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      SizedBox(
                        width: context.width * 0.04,
                      ),
                      Container(
                        padding: const EdgeInsets.all(3.5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.grey,
                        ),
                        child: const Text(
                          "18+",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.width * 0.04,
                      ),
                      Container(
                        padding: const EdgeInsets.all(3.5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: const Text(
                          "HD",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () => null,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: context.height * 0.01,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(detail ?? "")),
            SizedBox(
              height: context.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
