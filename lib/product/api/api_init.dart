import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:netflix/core/base/model/base_view_model.dart';
import 'package:tmdb_api/tmdb_api.dart';
part 'api_init.g.dart';

class Api = _ApiBase with _$Api;

abstract class _ApiBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) {}
  @override
  void init() {
    apiInit();
  }

  @observable
  bool loading = false;

  @observable
  List? trendingmovies;
  @observable
  List? topratedmovies;
  @observable
  List? tv;
  @observable
  List? tvEpisodes;

  @observable
  List? trendingmoviesSearch;
  @observable
  List? topratedmoviesSearch;
  @observable
  List? tvSearch;
  @observable
  List? tvEpisodesSearch;

  @action
  Future<void> apiInit() async {
    changeLoading();

    final tmdb = TMDB(ApiKeys('',
        ''));

    Map trendingresult = await tmdb.v3.trending.getTrending();
    Map topratedresult = await tmdb.v3.movies.getTopRated();
    Map tvresult = await tmdb.v3.tv.getTopRated();
    Map tvEpisodesResult = await tmdb.v3.tv.getTopRated();

    trendingmovies = trendingresult['results'];
    topratedmovies = topratedresult['results'];
    tv = tvresult['results'];
    tvEpisodes = tvEpisodesResult['results'];

    changeLoading();
  }

  @action
  void changeLoading() {
    loading = !loading;
  }

  @action
  void filterTopRatedMovies(String query) {
    Future.delayed(const Duration(seconds: 3));
    topratedmoviesSearch = topratedmovies
            ?.where((item) => item['original_title']
                .toLowerCase()
                .contains(query.toLowerCase()))
            .toList() ??
        topratedmovies;
  }
}
