import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/page/home/facade/index.dart';
import 'package:netease/page/home/music_radio/index.dart';
import 'package:netease/page/home/music_video/index.dart';
import 'package:netease/page/home/ranking/index.dart';
import 'package:netease/page/home/radar_playlist/index.dart';
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
            // >> 门面
            Container(
              child: HomeFacade(),
            ),
            SizedBox(height: 1.rpx),
            // >> 歌单列表
            Container(
              child: HomeRecomandPlaylist(),
            ),
            SizedBox(height: 10.rpx),
            // >> 私人FM
            Container(
              child: HomeFM(),
            ),
            SizedBox(height: 10.rpx),
            // >> 雷达歌单
            Container(
              child: RadarPlaylist(),
            ),
            SizedBox(height: 10.rpx),
            // >> 排行榜
            Container(
              child: HomeRanking(),
            ),
            SizedBox(height: 10.rpx),
            // >> 广播电台
            Container(
              child: MusicRadio(),
            ),
            SizedBox(height: 10.rpx),
            // >> 音乐视频
            Container(
              child: MusicVideo(),
            ),
            SizedBox(height: 10.rpx),
          ],
        ),
      ),
    );
  }
}
