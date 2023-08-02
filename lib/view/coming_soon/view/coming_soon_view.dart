// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:netflix/core/base/view/base_view.dart';
import '../../../product/api/api_init.dart';
import '../../../product/widgets/coming_soon_widget.dart';
import '../../../product/widgets/helper.dart';

class ComingSoonView extends StatelessWidget {
  const ComingSoonView({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl = 'https://image.tmdb.org/t/p/w500';
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Helper.comingSoonAppBar,
      backgroundColor: Colors.black,
      body: BaseView<Api>(
        viewModel: Api(),
        onModelReady: (model) => model.init(),
        onPageBuilder: (context, model) => Observer(
          builder: (context) => model.loading
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: size.height,
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      return ComingSoonWidget(
                        comingSoon: model.topratedmovies ?? [],
                        index: index,
                      );
                    }),
                    itemCount: model.topratedmovies?.length ?? 0,
                  ),
                ),
        ),
      ),
    );
  }
}
