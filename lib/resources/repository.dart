

import 'package:flutter_blocex1/models/item_model.dart';
import 'package:flutter_blocex1/models/trailer_model.dart';
import 'package:flutter_blocex1/resources/movie_api_provider.dart';

class Repository
{
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();

  Future<TrailerModel> fetchTrailers(int movieId) => moviesApiProvider.fetchTrailer(movieId);
}