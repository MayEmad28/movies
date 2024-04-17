import 'dart:math';
import 'package:flutter/material.dart';
import 'package:movies_app/api/api_const.dart';
import 'package:movies_app/model/popularMoviesResponse.dart';
import 'package:movies_app/theme/my_theme.dart';
class sliderItem extends StatelessWidget {
Results movies;
sliderItem({required this.movies});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: MediaQuery.of(context).size.height*0.2,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
            "${api_const.imageBaseUrl}${movies.backdropPath}"  ?? '',
            fit: BoxFit.fill,
            width: double.infinity,
              height: 250,
            ),
          ),
          Center(child: Icon(Icons.play_circle_filled_outlined,
            color: Colors.white,
            size: 65,
          ),
          ),
         Positioned(
             left: 15,
             bottom: 5,
             child:
             Container(
               clipBehavior: Clip.antiAlias,
               decoration: BoxDecoration(
                   color: Colors.greenAccent,
                 borderRadius: BorderRadius.circular(8)
               ),
               height: 199,
               width: 129,
               child: Image.network(
                 "${api_const.imageBaseUrl}${movies.posterPath}"  ?? '',
                 fit: BoxFit.fill,
                 width: double.infinity,
                 height: 250,
               ),
             ),
         ),
          Positioned(
            left: 155,
             bottom: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(movies.title!,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(movies.releaseDate!.substring(0,min(4,movies.releaseDate!.length)),
                    style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Color(0xffB5B4B4)
                    ) ,
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
