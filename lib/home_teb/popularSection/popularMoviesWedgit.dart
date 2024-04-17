import 'package:flutter/material.dart';
import 'package:movies_app/home_teb/popularSection/sliderItem.dart';
import 'package:movies_app/model/popularMoviesResponse.dart';
import 'package:carousel_slider/carousel_slider.dart';
class popularMoviesWidget extends StatelessWidget {
List<Results> results=[];
popularMoviesWidget({required this.results});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: results.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          sliderItem(movies: results[itemIndex]),
      options: CarouselOptions(
        height: 300,
        aspectRatio: 16/9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
