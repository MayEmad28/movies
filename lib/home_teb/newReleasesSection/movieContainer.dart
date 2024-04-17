import 'package:flutter/material.dart';
import 'package:movies_app/api/api_const.dart';
import 'package:movies_app/model/popularMoviesResponse.dart';
import 'package:movies_app/theme/my_theme.dart';
class movieContainer extends StatelessWidget {
Results results;
movieContainer({required this.results});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5)
          ),
          height: 128,
          width: 98,
          child:Image.network("${api_const.imageBaseUrl}${results.posterPath}"  ?? '',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            const Icon(Icons.bookmark,size: 50,color: Color(0xaa514F4F),),
            Icon(Icons.add,size: 20,color: my_theme.whitecolor,)
          ],
        )
      ],
    );
  }
}
