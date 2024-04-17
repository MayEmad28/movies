import 'package:flutter/material.dart';
import 'package:movies_app/api/api_manager.dart';
import 'package:movies_app/home_teb/newReleasesSection/movieContainer.dart';
import 'package:movies_app/theme/my_theme.dart';
class newReleasesSection extends StatefulWidget {

  @override
  State<newReleasesSection> createState() => _newReleasesSectionState();
}

class _newReleasesSectionState extends State<newReleasesSection> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: api_manger.getNewReleasesMovies(),
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
                  api_manger.getNewReleasesMovies();
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
                    child: movieContainer(results: resultList[index],),
                  );
                }),
          );
        }
    );
  }
}