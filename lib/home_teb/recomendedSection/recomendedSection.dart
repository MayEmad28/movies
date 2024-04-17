import 'package:flutter/material.dart';
import 'package:movies_app/api/api_manager.dart';
import 'package:movies_app/home_teb/newReleasesSection/movieContainer.dart';
import 'package:movies_app/theme/my_theme.dart';
class recomendedSection extends StatefulWidget {

  @override
  State<recomendedSection> createState() => _recomendedSectionState();
}

class _recomendedSectionState extends State<recomendedSection> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: api_manger.getRecomendedMovies(),
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
                  api_manger.getRecomendedMovies();
                  setState(() {

                  });

                }, child: Text('Try Again'))
              ],
            );
          }
          var resultList=snapshot.data?.results?? [];
          print(resultList.length);
          return Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: resultList.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 250,
                      width: 250,
                      color: my_theme.filmCardColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          movieContainer(results: resultList[index],),
                          Row(
                            children: [
                              Icon(Icons.star,color: my_theme.yellowcolor,size: 20,),
                              SizedBox(width: 5,),
                              Text('${resultList[index].voteAverage}')
                            ],
                          ),
                          Text('${resultList[index].title!}',
                            style: Theme.of(context).textTheme.bodySmall,),
                        ],
                      ),
                    ),
                  );
                }),
          );
        }
    );
  }
}