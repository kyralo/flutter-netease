import 'package:flutter/material.dart';
import 'package:netease/widgets/label_more.dart';
import 'package:netease/widgets/netease_label_card.dart';
import 'package:netease/widgets/netease_playlist_card.dart';
import 'package:netease/widgets/netease_scroll.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class RadarPlaylist extends StatefulWidget {
  @override
  _RadarPlaylistState createState() => _RadarPlaylistState();
}

class _RadarPlaylistState extends State<RadarPlaylist> {
  @override
  Widget build(BuildContext context) {
    return NeteaseLabelCard(
      280.rpx,
      SuitText(
        '一如年少城南的歌单',
        alignment: AlignmentDirectional.bottomStart,
        fontSize: 22.rpx,
        color: Color.fromRGBO(54, 54, 54, 0.8),
      ),
      LabelMore(),
      Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(15.rpx, 0.rpx, 15.rpx, 0.rpx),
        child: NeteaseScroll(
          direction: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 160.rpx,
                alignment: AlignmentDirectional.center,
                child: NeteasePlaylistCard('lib/assets/image/playlist_card04.jpg'),
              ),
              Container(
                width: 160.rpx,
                alignment: AlignmentDirectional.center,
                child: NeteasePlaylistCard('lib/assets/image/playlist_card03.jpg'),
              ),
              Container(
                width: 160.rpx,
                alignment: AlignmentDirectional.center,
                child: NeteasePlaylistCard('lib/assets/image/playlist_card02.jpg'),
              ),
              Container(
                width: 160.rpx,
                alignment: AlignmentDirectional.center,
                child: NeteasePlaylistCard('lib/assets/image/playlist_card01.jpg'),
              ),
            ],
          ),
        ),
      ),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
    );
  }
}
