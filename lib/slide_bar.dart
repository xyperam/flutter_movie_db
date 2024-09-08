import 'package:flutter/material.dart';

class SlideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          title: Text('Movies'),
          onTap: () {
            print('Movies clicked');
          },
        ),
        ListTile(
          title: Text('TV Shows'),
          onTap: () {
            print('TV Shows Clicked');
          },
        ),
        ListTile(
          title: Text('People'),
          onTap: () {
            print('People Clicked');
          },
        )
      ],
    ));
  }
}
