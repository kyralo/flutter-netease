import 'package:flutter/material.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class NeteaseMusicCardEntry extends StatefulWidget {
  NeteaseMusicCardEntry({Key key}) : super(key: key);

  @override
  _NeteaseMusicCardEntryState createState() => _NeteaseMusicCardEntryState();
}

class _NeteaseMusicCardEntryState extends State<NeteaseMusicCardEntry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.rpx,
      child: Row(
        children: <Widget>[
          Container(
            width: 80.rpx,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                  width: 75.rpx,
                  height: 75.rpx,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0),
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(width: 0, style: BorderStyle.none),
                  ),
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(13)),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'lib/assets/image/p1.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  child: Icon(
                    IconFont.rehin_bofang6,
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    size: 35.rpx,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 380.rpx,
            height: 75.rpx,
            padding: EdgeInsets.fromLTRB(5.rpx, 10.rpx, 5.rpx, 5.rpx),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      width: 1.rpx,
                      style: BorderStyle.solid)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Container(
                        child: SuitText('空城',
                            fontSize: 20.rpx, fontWeight: FontWeight.normal),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.rpx, 0, 1.rpx, 0),
                        child: Icon(IconFont.rehin_jian,
                            size: 15, color: Color.fromRGBO(183, 183, 183, 1)),
                      ),
                      Container(
                        child: SuitText(' 杨坤',
                            fontSize: 13.rpx,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(183, 183, 183, 1)),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  alignment: AlignmentDirectional.bottomStart,
                  padding: EdgeInsets.fromLTRB(0, 5.rpx, 0, 0),
                  child: SuitText('就算春去秋来, 你依然是我的挚爱.',
                      fontSize: 13.rpx,
                      fontWeight: FontWeight.normal,
                      alignment: AlignmentDirectional.bottomStart,
                      color: Color.fromRGBO(183, 183, 183, 1)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
