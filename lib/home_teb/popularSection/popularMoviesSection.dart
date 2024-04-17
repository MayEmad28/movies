import 'package:flutter/material.dart';
import 'package:movies_app/api/api_manager.dart';
import 'package:movies_app/home_teb/popularSection/popularMoviesWedgit.dart';
import 'package:movies_app/theme/my_theme.dart';
class popularMoviesSection extends StatefulWidget {
  @override
  State<popularMoviesSection> createState() => _popularMoviesSectionState();
}

class _popularMoviesSectionState extends State<popularMoviesSection> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: api_manger.getPopularMovies(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting) {
            return Center(
              child:CircularProgressIndicator(
                color: my_theme.yellowcolor,
              ) ,
            );
          }
          else if(snapshot.hasError){
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(onPressed: (){
                  api_manger.getPopularMovies();
                  setState(() {

                  });

                }, child: Text('Try Again'))
              ],
            );
          }
          var resultList=snapshot.data?.results?? [];
          return popularMoviesWidget(results: resultList);
        }
    );
  }
}
