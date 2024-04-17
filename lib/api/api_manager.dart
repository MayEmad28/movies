import 'dart:convert';
import 'package:movies_app/model/newReleasesResponse.dart';
import 'package:movies_app/model/popularMoviesResponse.dart';
import 'package:http/http.dart' as http;
import 'package:movies_app/api/api_const.dart';
import 'package:movies_app/model/recomendedMoviesResponse.dart';
class api_manger{
static Future<PopularMoviesResponse?>getPopularMovies()async{
  Uri url=Uri.http(api_const.baseUrl,api_const.popularMovies,
    {
      'api_key':'d87cbabfb588f9a841683f43262ba675',
    }
  );
  try {
    var response = await http.get(url);
    var body = response.body;
    var json = jsonDecode(body);
    return PopularMoviesResponse.fromJson(json);
  }
  catch(e){
    throw e;
  }
}

static Future<NewReleasesResponse?>getNewReleasesMovies()async{
  Uri url=Uri.http(api_const.baseUrl,api_const.upComingMovies,
    {
      'api_key':'d87cbabfb588f9a841683f43262ba675',
    }
  );
  try {
    var response = await http.get(url);
    var body = response.body;
    var json = jsonDecode(body);
    return NewReleasesResponse.fromJson(json);
  }
  catch(e){
    throw e;
  }
}


static Future<RecomendedMoviesResponse?>getRecomendedMovies()async{
  Uri url=Uri.http(api_const.baseUrl,api_const.recomendedMovies,
    {
      'api_key':'d87cbabfb588f9a841683f43262ba675',
    }
  );
  try {
    var response = await http.get(url);
    var body = response.body;
    var json = jsonDecode(body);
    return RecomendedMoviesResponse.fromJson(json);
  }
  catch(e){
    throw e;
  }
}
}