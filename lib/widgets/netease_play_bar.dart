import 'package:flutter/material.dart';
import 'package:netease/common/animation/spin_avatar.dart';
import 'package:netease/common/constants/global_constants.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/suit_text.dart';

import 'package:netease/common/extension/num_fit.dart';

class NeteasePlayBar extends StatefulWidget {
  NeteasePlayBar({Key key}) : super(key: key);

  @override
  _NeteasePlayBarState createState() => _NeteasePlayBarState();
}

class _NeteasePlayBarState extends State<NeteasePlayBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.bottomStart,
      constraints: BoxConstraints(maxWidth: double.infinity),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 70.rpx,
            height: 60.rpx,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            alignment: AlignmentDirectional.centerEnd,
            child: SpinAvatar(
              Image.network(
                'http://p4.music.126.net/sBW5UDPex60BtCkGqyyVUA==/109951163298179330.jpg?param=30y30',
                fit: BoxFit.fill,
              ),
              duration: Duration(minutes: 1),
            ),
          ),
          Container(
            width: 470.rpx,
            height: 50.rpx,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15.rpx, 0, 15.rpx, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: SuitText(
                            '童话',
                            fontSize: 18.rpx,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Container(
                          child: SuitText(
                            ' - ',
                            fontSize: 18.rpx,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          child: SuitText(
                            '光良',
                            fontSize: 15.rpx,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    child: Container(
                      width: 35.rpx,
                      height: 35.rpx,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(90)),
                        border: Border.all(
                          width: 1,
                          style: BorderStyle.solid,
                          color: Color.fromRGBO(235, 235, 235, 1),
                        ),
                      ),
                      child: Card(
                        elevation: 0,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(90)),
                        clipBehavior: Clip.antiAlias,
                        child: Icon(
                          IconFont.rehin_icon_system_fn_play,
                          color: Color.fromRGBO(187, 188, 187, 1),
                          size: 15.rpx,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    child: Icon(IconFont.rehin_paixu,
                        color: Color.fromRGBO(187, 188, 187, 1)),
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
