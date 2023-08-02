// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix/core/extension/context_extension.dart';
import 'package:netflix/view/root_app/view/root_app_view.dart';
import '../../../product/widgets/helper.dart';

class DownloadView extends StatelessWidget {
  const DownloadView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Helper.downloadAppBar,
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: context.height * 0.01,
            ),
            Container(
              height: context.height * 0.1,
              width: size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(163, 66, 64, 64),
              ),
              child: Helper.downloadBar,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Container(
              padding: const EdgeInsets.all(35),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(163, 66, 64, 64),
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.download,
                size: 90,
                color: Color.fromARGB(161, 153, 148, 148),
              ),
            ),
            SizedBox(
              height: context.height * 0.03,
            ),
            const Text(
              "Never be without Netflix",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: context.height * 0.03,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40, left: 40),
              child: Text(
                "Download shows and movies so you'll never be without something to watch even when you're offline",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return const RootView();
                    }),
                  ),
                );
              }),
              child: Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.center,
                width: size.width * 0.8,
                color: Colors.white,
                child: const Text(
                  "See What You Can Download",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
