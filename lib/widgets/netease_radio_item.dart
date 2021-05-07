import 'package:flutter/material.dart';
import 'package:netease/common/extension/num_fit.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/widgets/suit_text.dart';

class NeteaseRadioItem extends StatefulWidget {
  NeteaseRadioItem({Key key}) : super(key: key);

  @override
  _NeteaseRadioItemState createState() {
    return _NeteaseRadioItemState();
  }
}

class _NeteaseRadioItemState extends State<NeteaseRadioItem> {
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
    return Container(
      padding: EdgeInsets.fromLTRB(10.rpx, 20.rpx, 10.rpx, 10.rpx),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                  width: 130.rpx,
                  height: 130.rpx,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0),
                    border: Border.all(width: 0, style: BorderStyle.none),
                  ),
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(90)),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset('lib/assets/image/p1.jpg', fit: BoxFit.fill),
                  ),
                ),
                Container(
                  child: Icon(
                    IconFont.rehin_bofang6,
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    size: 50.rpx,
                  ),
                ),
              ],
            ),
            Container(
              child: SuitText('杭州FM90.7',
                alignment: AlignmentDirectional.bottomStart,
                fontSize: 18.rpx,
                color: Color.fromRGBO(54, 54, 54, 0.8)),
            )
          ],
        ),
      )
    );
  }
}