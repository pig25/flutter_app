import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/dialog/dialog_screen.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_Screen_State createState() => _Home_Screen_State();
}

class _Home_Screen_State extends State<Home_Screen> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  @override
  Widget build(BuildContext context) {
    return
        CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: _floating,
              pinned: _pinned,
              snap: _snap,
              expandedHeight: 160.0,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text('SliverAppBar'),
                background: FlutterLogo(),
              ),
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.settings,
                      size: 25,
                    ),
                    onPressed: () => {}),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: index.isOdd ? Colors.white : Colors.black12,
                    height: 100.0,
                    child: Center(
                      child: Text('$index', textScaleFactor: 5),
                    ),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        );

  }
}
