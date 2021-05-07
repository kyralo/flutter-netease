import 'package:flutter/cupertino.dart';
import 'package:netease/widgets/label_more.dart';
import 'package:netease/widgets/label_rank_card.dart';
import 'package:netease/widgets/netease_label_card.dart';
import 'package:netease/widgets/netease_scroll.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class HomeRanking extends StatefulWidget {
  @override
  _HomeRankingState createState() => _HomeRankingState();
}

class _HomeRankingState extends State<HomeRanking> {
  @override
  Widget build(BuildContext context) {
    return NeteaseLabelCard(
      460.rpx,
      SuitText(
        '排行榜',
        alignment: AlignmentDirectional.bottomStart,
        fontSize: 22.rpx,
        color: Color.fromRGBO(54, 54, 54, 0.8),
      ),
      LabelMore(),
      Container(
        child: NeteaseScroll(
          direction: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LabelRankCard(),
              LabelRankCard(),
              LabelRankCard(),
            ],
          ),
        ),
      ),
    );
  }
}
