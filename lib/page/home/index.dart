import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/page/home/facade/index.dart';
import 'package:netease/page/home/ranking/index.dart';
import 'package:netease/page/home/recomand_playlist/index.dart';

import 'package:netease/common/extension/num_fit.dart';

import 'fm/index.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              child: HomeFacade(),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.rpx, 1.rpx, 0.rpx, 10.rpx),
              child: HomeRecomandPlaylist(),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.rpx, 1.rpx, 0.rpx, 10.rpx),
              child: HomeFM(),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.rpx, 1.rpx, 0.rpx, 10.rpx),
              child: HomeRanking(),
            ),
          ],
        ),
      ),
    );;
  }
}
