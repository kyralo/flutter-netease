import 'package:flutter/material.dart';
import 'package:netease/widgets/netease_label_card.dart';
import 'package:netease/widgets/netease_radio_item.dart';
import 'package:netease/widgets/netease_scroll.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class MusicRadio extends StatefulWidget {
  MusicRadio({Key key}) : super(key: key);

  @override
  _MusicRadioState createState() {
    return _MusicRadioState();
  }
}

class _MusicRadioState extends State<MusicRadio> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NeteaseLabelCard(
      270.rpx,
      Container(
        child: Row(
          children: [
            SuitText(
              '广播电台',
              alignment: AlignmentDirectional.bottomStart,
              fontSize: 22.rpx,
              color: Color.fromRGBO(54, 54, 54, 0.8),
            ),
            SizedBox(width: 10.rpx),
            SuitText(
              '|',
              alignment: AlignmentDirectional.bottomStart,
              fontSize: 22.rpx,
              color: Color.fromRGBO(54, 54, 54, 0.3),
            ),
            SizedBox(width: 10.rpx),
            SuitText(
              '24小时播客',
              alignment: AlignmentDirectional.bottomStart,
              fontSize: 22.rpx,
              color: Color.fromRGBO(183, 183, 183, 1),
            ),
          ],
        ),
      ),
      Container(),
      Container(
        child: NeteaseScroll(
          direction: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NeteaseRadioItem(),
              NeteaseRadioItem(),
              NeteaseRadioItem(),
              NeteaseRadioItem(),
              NeteaseRadioItem(),
              NeteaseRadioItem(),
              NeteaseRadioItem(),
              NeteaseRadioItem(),
            ],
          ),
        ),
      ),
    );
  }
}