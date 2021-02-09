import 'package:flutter/cupertino.dart';

import 'package:netease/common/extension/num_fit.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/suit_text.dart';

class LabelMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
