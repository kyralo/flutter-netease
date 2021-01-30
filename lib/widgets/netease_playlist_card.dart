import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class NeteasePlaylistCard extends StatelessWidget {

  final String _imgUrl;

  NeteasePlaylistCard(this._imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.rpx,
      child: Column(
        children: <Widget>[
          Container(
            alignment: AlignmentDirectional.bottomStart,
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Container(
                  width: 120.rpx,
                  height: 152.rpx,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242,242,242, 1),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                        width: 0, style: BorderStyle.none),
                  ),
                ),
                Container(
                  width: 150.rpx,
                  height: 150.rpx,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255,255,255,0),
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                    border: Border.all(
                        width: 0, style: BorderStyle.none),
                  ),
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(13)),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(_imgUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 150.rpx,
                  height: 150.rpx,
                  padding: EdgeInsets.fromLTRB(0, 10.rpx, 10.rpx, 0),
                  alignment: AlignmentDirectional.topEnd,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0),
                  ),
                  child: Container(
                    width: 80.rpx,
                    height: 25.rpx,
                    padding: EdgeInsets.fromLTRB(10.rpx, 0, 10.rpx, 0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0,0,0,0.2),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      border: Border.all(
                          width: 0, style: BorderStyle.none),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(IconFont.rehin_icon_system_fn_play, size: 14.rpx, color: Color.fromRGBO(226,237,245, 1)),
                        ),
                        Container(
                          child: SuitText('16645', fontSize: 14.rpx, color: Color.fromRGBO(226,237,245, 1)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SuitText('精选神仙翻唱呐精选神仙翻唱呐精选神仙翻唱呐',
              color: Color.fromRGBO(57,57,57, 0.9),
              fontSize: 16.rpx,
              fontWeight: FontWeight.w100,
              alignment: AlignmentDirectional.bottomStart,
            ),
          ),
        ],
      )
    );
  }
}
