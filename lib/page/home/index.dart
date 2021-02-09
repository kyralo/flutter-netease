import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/page/home/facade/index.dart';
import 'package:netease/page/home/ranking/index.dart';
import 'package:netease/page/home/recomand_playlist/index.dart';

import 'package:netease/common/extension/num_fit.dart';
import 'package:netease/widgets/netease_scroll.dart';

import 'fm/index.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color color = Color.fromRGBO(245,245,245, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
      child: NeteaseScroll(
        direction: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              child: HomeFacade(),
            ),
            SizedBox(height: 1.rpx),
            Container(
              child: HomeRecomandPlaylist(),
            ),
            SizedBox(height: 10.rpx),
            Container(
              child: HomeFM(),
            ),
            SizedBox(height: 10.rpx),
            Container(
              child: HomeRanking(),
            ),
            SizedBox(height: 10.rpx),
          ],
        ),
      ),
    );
  }
}
