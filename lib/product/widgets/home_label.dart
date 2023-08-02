// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class HomeLabel extends StatelessWidget {
  const HomeLabel({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
