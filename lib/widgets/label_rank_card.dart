import 'package:flutter/cupertino.dart';

import 'package:netease/common/extension/num_fit.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/suit_text.dart';

import 'label_rank_item.dart';

class LabelRankCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.rpx,
      height: 360.rpx,
      margin: EdgeInsets.all(10.rpx),
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
            width: 2.rpx,
            color: Color.fromRGBO(245,245,245,1.0)
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 380.rpx,
            height: 80.rpx,
            padding: EdgeInsets.fromLTRB(10.rpx, 0, 10.rpx, 0),
            alignment: AlignmentDirectional.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: SuitText(
                    '硬地原创音乐榜',
                    fontSize: 20.rpx,
                    color: Color.fromRGBO(89, 89, 89, 1),
                  ),
                ),
                Container(
                  child: Icon(
                    IconFont.rehin_arrow_right,
                    color: Color.fromRGBO(89, 89, 89, 1),
                    size: 20.rpx,
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: 400.rpx,
              height: 255.rpx,
              child: Column(children: <Widget>[
                LabelRankItem(),
                LabelRankItem(),
                LabelRankItem(),
              ]))
        ],
      ),
    );
  }
}
