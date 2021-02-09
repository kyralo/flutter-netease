import 'package:flutter/cupertino.dart';
import 'package:netease/common/extension/num_fit.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/suit_text.dart';

import 'item_cover.dart';

class LabelRankItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.rpx,
      height: 85.rpx,
      padding: EdgeInsets.fromLTRB(10.rpx, 5.rpx, 10.rpx, 5.rpx),
      child: Row(
        children: <Widget>[
          ItemCover('lib/assets/image/p1.jpg', 75.rpx, 75.rpx),
          Container(
            width: 280.rpx,
            height: 75.rpx,
            padding: EdgeInsets.fromLTRB(5.rpx, 10.rpx, 5.rpx, 5.rpx),
            decoration: BoxDecoration(
              border: Border.all(style: BorderStyle.none),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Container(
                        child: SuitText('1', fontSize: 20.rpx, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(width: 3.rpx),
                      Container(
                        // constraints: BoxConstraints(
                        //   minWidth: 120,
                        // ),
                        child: SuitText('空城', fontSize: 20.rpx, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(width: 3.rpx),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.rpx, 0, 1.rpx, 0),
                        child: Icon(IconFont.rehin_jian,
                            size: 15, color: Color.fromRGBO(183, 183, 183, 1)),
                      ),
                      SizedBox(width: 3.rpx),
                      Container(
                        // constraints: BoxConstraints(
                        //   minWidth: 30,
                        // ),
                        child: SuitText('杨坤',
                            fontSize: 13.rpx,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(183, 183, 183, 1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
