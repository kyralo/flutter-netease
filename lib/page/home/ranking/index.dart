import 'package:flutter/cupertino.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class HomeRanking extends StatefulWidget {
  @override
  _HomeRankingState createState() => _HomeRankingState();
}

class _HomeRankingState extends State<HomeRanking> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SuitText('rank'),
    );
  }
}
