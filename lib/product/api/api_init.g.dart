// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_init.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Api on _ApiBase, Store {
  late final _$loadingAtom = Atom(name: '_ApiBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$trendingmoviesAtom =
      Atom(name: '_ApiBase.trendingmovies', context: context);

  @override
  List<dynamic>? get trendingmovies {
    _$trendingmoviesAtom.reportRead();
    return super.trendingmovies;
  }

  @override
  set trendingmovies(List<dynamic>? value) {
    _$trendingmoviesAtom.reportWrite(value, super.trendingmovies, () {
      super.trendingmovies = value;
    });
  }

  late final _$topratedmoviesAtom =
      Atom(name: '_ApiBase.topratedmovies', context: context);

  @override
  List<dynamic>? get topratedmovies {
    _$topratedmoviesAtom.reportRead();
    return super.topratedmovies;
  }

  @override
  set topratedmovies(List<dynamic>? value) {
    _$topratedmoviesAtom.reportWrite(value, super.topratedmovies, () {
      super.topratedmovies = value;
    });
  }

  late final _$tvAtom = Atom(name: '_ApiBase.tv', context: context);

  @override
  List<dynamic>? get tv {
    _$tvAtom.reportRead();
    return super.tv;
  }

  @override
  set tv(List<dynamic>? value) {
    _$tvAtom.reportWrite(value, super.tv, () {
      super.tv = value;
    });
  }

  late final _$tvEpisodesAtom =
      Atom(name: '_ApiBase.tvEpisodes', context: context);

  @override
  List<dynamic>? get tvEpisodes {
    _$tvEpisodesAtom.reportRead();
    return super.tvEpisodes;
  }

  @override
  set tvEpisodes(List<dynamic>? value) {
    _$tvEpisodesAtom.reportWrite(value, super.tvEpisodes, () {
      super.tvEpisodes = value;
    });
  }

  late final _$trendingmoviesSearchAtom =
      Atom(name: '_ApiBase.trendingmoviesSearch', context: context);

  @override
  List<dynamic>? get trendingmoviesSearch {
    _$trendingmoviesSearchAtom.reportRead();
    return super.trendingmoviesSearch;
  }

  @override
  set trendingmoviesSearch(List<dynamic>? value) {
    _$trendingmoviesSearchAtom.reportWrite(value, super.trendingmoviesSearch,
        () {
      super.trendingmoviesSearch = value;
    });
  }

  late final _$topratedmoviesSearchAtom =
      Atom(name: '_ApiBase.topratedmoviesSearch', context: context);

  @override
  List<dynamic>? get topratedmoviesSearch {
    _$topratedmoviesSearchAtom.reportRead();
    return super.topratedmoviesSearch;
  }

  @override
  set topratedmoviesSearch(List<dynamic>? value) {
    _$topratedmoviesSearchAtom.reportWrite(value, super.topratedmoviesSearch,
        () {
      super.topratedmoviesSearch = value;
    });
  }

  late final _$tvSearchAtom = Atom(name: '_ApiBase.tvSearch', context: context);

  @override
  List<dynamic>? get tvSearch {
    _$tvSearchAtom.reportRead();
    return super.tvSearch;
  }

  @override
  set tvSearch(List<dynamic>? value) {
    _$tvSearchAtom.reportWrite(value, super.tvSearch, () {
      super.tvSearch = value;
    });
  }

  late final _$tvEpisodesSearchAtom =
      Atom(name: '_ApiBase.tvEpisodesSearch', context: context);

  @override
  List<dynamic>? get tvEpisodesSearch {
    _$tvEpisodesSearchAtom.reportRead();
    return super.tvEpisodesSearch;
  }

  @override
  set tvEpisodesSearch(List<dynamic>? value) {
    _$tvEpisodesSearchAtom.reportWrite(value, super.tvEpisodesSearch, () {
      super.tvEpisodesSearch = value;
    });
  }

  late final _$apiInitAsyncAction =
      AsyncAction('_ApiBase.apiInit', context: context);

  @override
  Future<void> apiInit() {
    return _$apiInitAsyncAction.run(() => super.apiInit());
  }

  late final _$_ApiBaseActionController =
      ActionController(name: '_ApiBase', context: context);

  @override
  void changeLoading() {
    final _$actionInfo =
        _$_ApiBaseActionController.startAction(name: '_ApiBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_ApiBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void filterTopRatedMovies(String query) {
    final _$actionInfo = _$_ApiBaseActionController.startAction(
        name: '_ApiBase.filterTopRatedMovies');
    try {
      return super.filterTopRatedMovies(query);
    } finally {
      _$_ApiBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
trendingmovies: ${trendingmovies},
topratedmovies: ${topratedmovies},
tv: ${tv},
tvEpisodes: ${tvEpisodes},
trendingmoviesSearch: ${trendingmoviesSearch},
topratedmoviesSearch: ${topratedmoviesSearch},
tvSearch: ${tvSearch},
tvEpisodesSearch: ${tvEpisodesSearch}
    ''';
  }
}
