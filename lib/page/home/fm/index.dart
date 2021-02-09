import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/netease_carousel.dart';
import 'package:netease/widgets/netease_music_card_entry.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class HomeFM extends StatefulWidget {
  @override
  _HomeFMState createState() => _HomeFMState();
}

class _HomeFMState extends State<HomeFM> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 330.rpx,
      padding: EdgeInsets.fromLTRB(15.rpx, 15.rpx, 15.rpx, 0.rpx),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.rpx)),
        border: Border.all(width: 0, style: BorderStyle.none),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0.rpx, 10.rpx, 0.rpx, 0.rpx),
            child: SuitText(
              '私人定制',
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Color.fromRGBO(188, 188, 188, 0.8),
              alignment: AlignmentDirectional.bottomStart,
            ),
          ),
          Container(
            child: Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Row(
                        children: <Widget>[
                          Icon(IconFont.rehin_shuaxin1, size: 28.rpx),
                          SuitText(
                            '好听的华语歌曲精选',
                            fontSize: 22.rpx,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            alignment: AlignmentDirectional.bottomStart,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      alignment: AlignmentDirectional.centerEnd,
                      padding: EdgeInsets.fromLTRB(0.rpx, 5.rpx, 0.rpx, 0.rpx),
                      child: Container(
                        width: 80.rpx,
                        padding: EdgeInsets.fromLTRB(5.rpx, 4.rpx, 10.rpx, 4.rpx),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.all(Radius.circular(25.rpx)),
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(243, 243, 243, 1)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(IconFont.rehin_bofang6),
                            SuitText(
                              '播放',
                              fontSize: 18.rpx,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              alignment: AlignmentDirectional.bottomStart,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 240.rpx,
            child: NeteaseCarousel(
              itemCount: 3,
              autoplay: false,
              child: Container(
                child: Column(
                  children: <Widget>[
                    NeteaseMusicCardEntry('lib/assets/image/p1.jpg', '空城', ' 杨坤', '就算春去秋来, 你依然是我的挚爱.'),
                    NeteaseMusicCardEntry('lib/assets/image/p1.jpg', '空城', ' 杨坤', '就算春去秋来, 你依然是我的挚爱.'),
                    NeteaseMusicCardEntry('lib/assets/image/p1.jpg', '空城', ' 杨坤', '就算春去秋来, 你依然是我的挚爱.'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}