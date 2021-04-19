import 'package:bloc/src/models/item_model.dart';
import 'package:bloc/src/models/trailer_model.dart';
import 'dart:async';
import 'movie_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();
  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
  Future<TrailerModel> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);
}
