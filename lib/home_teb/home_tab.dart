import 'package:flutter/material.dart';
import 'package:movies_app/home_teb/popularSection/popularMoviesSection.dart';
import 'package:movies_app/home_teb/recomendedSection/recomendedSection.dart';
import 'package:movies_app/theme/my_theme.dart';
import 'newReleasesSection/newReleasesSection.dart';
class home_tab extends StatelessWidget {
  static String routeName='home_tab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: my_theme.blackcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            popularMoviesSection(),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 435,
              color: my_theme.graycolor,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('New Releases',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 5,),
                    newReleasesSection(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 250,
              width: 435,
              color: my_theme.graycolor,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Recommended',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 20,),
                    recomendedSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
