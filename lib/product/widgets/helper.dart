// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix/view/download/view/download_view.dart';

import '../../view/coming_soon/view/coming_soon_view.dart';
import '../../view/home/view/home_view.dart';
import '../../view/search/view/search_view.dart';
import '../uitlity/profile.dart';

List<Widget> screens = <Widget>[
  const HomeView(),
  const ComingSoonView(),
  const SearchView(),
  const DownloadView(),
];

class Helper {
  static final comingSoonAppBar = AppBar(
    backgroundColor: Colors.black,
    centerTitle: false,
    title: const Text(
      "Coming Soon",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.collections_bookmark,
          color: Colors.white,
          size: 25,
        ),
      ),
      IconButton(
          onPressed: () {},
          icon: const CircleAvatar(
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundImage: AssetImage(profileUrl),
          )),
      const SizedBox(
        width: 5,
      )
    ],
  );
  static final downloadAppBar = AppBar(
    backgroundColor: Colors.black,
    centerTitle: false,
    title: const Text(
      "My Downloads",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.collections_bookmark,
          color: Colors.white,
          size: 25,
        ),
      ),
      IconButton(
          onPressed: () {},
          icon: const CircleAvatar(
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundImage: AssetImage(profileUrl),
          )),
      const SizedBox(
        width: 5,
      )
    ],
  );
  static final downloadBar = Row(
    children: const [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Icon(
          Icons.info_outline,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        "Smart Downloads",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        "ON",
        style: TextStyle(
          color: Color.fromARGB(255, 24, 175, 245),
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  );
  static final detailsAppBar = AppBar(
    backgroundColor: Colors.black,
    centerTitle: false,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.collections_bookmark,
          color: Colors.white,
          size: 25,
        ),
      ),
      IconButton(
          onPressed: () {},
          icon: const CircleAvatar(
            foregroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundImage: AssetImage(profileUrl),
          )),
      const SizedBox(
        width: 5,
      )
    ],
  );
  static final videoPreview = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Preview",
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
          fontSize: 15,
        ),
      ),
      const Icon(
        Icons.volume_mute,
        color: Colors.white,
        size: 25,
      ),
    ],
  );
}
