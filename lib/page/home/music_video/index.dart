import 'package:flutter/material.dart';
import 'package:netease/widgets/label_more.dart';
import 'package:netease/widgets/netease_label_card.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class MusicVideo extends StatefulWidget {
  MusicVideo({Key key}) : super(key: key);

  @override
  _MusicVideoState createState() {
    return _MusicVideoState();
  }
}

class _MusicVideoState extends State<MusicVideo> {
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
        400.rpx,
        SuitText(
          '精选音乐视频',
          alignment: AlignmentDirectional.bottomStart,
          fontSize: 22.rpx,
          color: Color.fromRGBO(54, 54, 54, 0.8),
        ),
        LabelMore(),
        Container(
          child: Column(
            children: [
              Container(
                width: 100.rpx,
              ),
              Container(
                width: 100.rpx,
              ),
              Container(
                width: 100.rpx,
              ),
              Container(
                width: 100.rpx,
              ),
              Container(
                width: 100.rpx,
              ),
            ],
          ),
        ),
    );
  }
}