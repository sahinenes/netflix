import 'package:flutter/material.dart';
import 'package:netflix/core/extension/context_extension.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "TV Shows",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          const Text(
            "Movies",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Row(
            children: const [
              Text(
                "Categories",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
