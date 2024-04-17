import 'package:flutter/material.dart';
import 'package:movies_app/api/api_const.dart';
import 'package:movies_app/model/popularMoviesResponse.dart';
class newReleasesMoviesWidget extends StatelessWidget {
  List<Results> response;
  newReleasesMoviesWidget({required this.response});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: response.length,
        itemBuilder: (context,index){
          return Container(
            height: 128,
            width: 98,
            child:Image.network("${api_const.imageBaseUrl}${response[index].posterPath}"  ?? ''),
          );
        });
  }
}
