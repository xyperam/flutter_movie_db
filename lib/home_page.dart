import 'package:flutter/material.dart';
import 'package:moviedb/free_to_watch_section.dart';
import 'hero_section.dart';
import 'slide_bar.dart';
import 'trending_section.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          title: const Center(
            child: Text('MovieDB'),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search button clicked');
              },
            ),
          ],
        ),
        drawer: SlideBar(),
        body: const SingleChildScrollView(
          child: Column(
            children: [HeroSection(), TrendingSection(), FreeToWatchSection()],
          ),
        ));
  }
}
