import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/netease_playlist_card.dart';
import 'package:netease/widgets/netease_scroll.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class HomeRecomandPlaylist extends StatefulWidget {
  @override
  _HomeRecomandPlaylistState createState() => _HomeRecomandPlaylistState();
}

class _HomeRecomandPlaylistState extends State<HomeRecomandPlaylist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280.rpx,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.rpx)),
        border: Border.all(width: 0.rpx, style: BorderStyle.none),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(15.rpx, 15.rpx, 15.rpx, 0.rpx),
            margin: EdgeInsets.fromLTRB(0.rpx, 0.rpx, 0.rpx, 15.rpx),
            alignment: AlignmentDirectional.center,
            child: Row(
              children: <Widget>[
                Flexible(
                  child: SuitText(
                    '推荐歌单',
                    alignment: AlignmentDirectional.bottomStart,
                    fontSize: 22.rpx,
                    color: Color.fromRGBO(54, 54, 54, 0.8),
                  ),
                ),
                Flexible(
                    child: Container(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Container(
                        width: 70.rpx,
                        padding: EdgeInsets.fromLTRB(15.rpx, 5.rpx, 0.rpx, 5.rpx),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25.rpx)),
                          border: Border.all(
                              width: 1.rpx, color: Color.fromRGBO(242, 242, 242, 1)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: SuitText(
                                '更多',
                                fontSize: 15.rpx,
                                color: Color.fromRGBO(89, 89, 89, 1),
                              ),
                            ),
                            Container(
                              child: Icon(
                                IconFont.rehin_arrow_right,
                                color: Color.fromRGBO(89, 89, 89, 1),
                                size: 15.rpx,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
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
        ],
      ),
    );
  }
}
