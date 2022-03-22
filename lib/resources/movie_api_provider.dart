import 'dart:async';
import 'dart:convert';
import 'package:flutter_blocex1/models/item_model.dart';
import 'package:flutter_blocex1/models/trailer_model.dart';
import 'package:http/http.dart' show Client, Response;

class MovieApiProvider
{
  Client client = Client();
  final _apiKey = "45bf6592c14a965b33549f4cc7e6c664";
  final _baseUrl = "http://api.themoviedb.org/3/movie";


  Future<ItemModel> fetchMovieList() async
  {
    Response response;
    if(_apiKey != 'api-key') {
      response = await client.get("$_baseUrl/popular?api_key=$_apiKey");
    }else{
      throw Exception('Please add your API key');
    }

    if(response.statusCode == 200)
      {
        // If the call to the server was successful, parse the JSON
        return ItemModel.fromJson(json.decode(response.body));
      }
    else
      {
        // If that call was not successful, throw an error.
        throw Exception('Failed to load post');
      }
  }


  Future<TrailerModel> fetchTrailer(int movieId) async
  {
    final response = await client.get("$_baseUrl/$movieId/videos?api_key=$_apiKey");

    if(response.statusCode == 200)
      {
        return TrailerModel.fromJson(json.decode(response.body));
      }
    else
      {
        throw Exception('Failed to load trailers');
      }
  }



}