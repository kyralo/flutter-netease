import 'package:flutter/material.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

import 'item_cover.dart';

class NeteaseMusicCardEntry extends StatefulWidget {
  final String url;
  final String title;
  final String author;
  final String info;
  NeteaseMusicCardEntry(this.url, this.title, this.author, this.info);
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
          ItemCover(widget.url, 75.rpx, 75.rpx),
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
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Container(
                        child: SuitText(widget.title, fontSize: 20.rpx, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(width: 3.rpx),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.rpx, 0, 1.rpx, 0),
                        child: Icon(IconFont.rehin_jian,
                            size: 15.rpx, color: Color.fromRGBO(183, 183, 183, 1)),
                      ),
                      SizedBox(width: 3.rpx),
                      Container(
                        child: SuitText(widget.author,
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
                  child: SuitText(
                      widget.info,
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
