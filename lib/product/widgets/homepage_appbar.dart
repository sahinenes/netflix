import 'package:flutter/material.dart';
import 'package:netflix/core/extension/context_extension.dart';

import '../uitlity/profile.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLowHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/logo.png",
              height: context.height * 0.05,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.collections_bookmark_rounded,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    foregroundColor: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    foregroundImage: AssetImage(profileUrl),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
