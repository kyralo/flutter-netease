import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/store/FacadeProvider.dart';
import 'package:netease/utils/picture_util.dart';
import 'package:netease/widgets/netease_carousel.dart';
import 'package:netease/widgets/netease_item.dart';
import 'package:netease/widgets/netease_scroll.dart';
import 'package:netease/widgets/netease_search.dart';
import 'package:provider/provider.dart';

import 'package:netease/common/extension/num_fit.dart';

class HomeFacade extends StatefulWidget {
  @override
  _HomeFacadeState createState() => _HomeFacadeState();
}

class _HomeFacadeState extends State<HomeFacade> {
  int _pictureIndex = 0;
  List<int> rgb = [255, 255, 255];
  Future<List<int>> _picColorPick(String picUrl) async{
    List<int> res = await PictureUtil.picColorPick(picUrl);
    if(mounted){
      setState(() {
        rgb = res;
      });
    }
    return rgb;
  }

  @override
  Widget build(BuildContext context) {
    var state = context.watch<FacadeProvider>();
    _picColorPick(state.pictures[_pictureIndex]);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(rgb[0], rgb[1], rgb[2], 0.5),
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(255, 255, 255, 1),
          ],
          stops: [0, 0.5, 1],
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            padding: EdgeInsets.fromLTRB(15.rpx, 40.rpx, 15.rpx, 0.rpx),
            child: NeteaseSearch(),
          ),
          Container(
            height: 220,
            padding: EdgeInsets.fromLTRB(15.rpx, 15.rpx, 15.rpx, 0.rpx),
            child: NeteaseCarousel(
              autoplay: true,
              itemCount: state.pictures.length,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(15.rpx)),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(state.pictures[_pictureIndex], fit: BoxFit.fitWidth),
              ),
              pictureIndex: (val, min) {
                /// 这里要延时加载  否则会抱The widget on which setState() or markNeedsBuild() was called was:错误
                Future.delayed(Duration(milliseconds: min)).then((e) {
                  if(mounted){
                    setState(() {
                      _pictureIndex = val;
                    });
                  }
                });
              },
            ),
          ),
          Container(
            height: 120,
            padding: EdgeInsets.fromLTRB(10.rpx, 5.rpx, 10.rpx, 0.rpx),
            // decoration: BoxDecoration(
            //   color: Colors.white,
            // ),
            child: NeteaseScroll(
              direction: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 100.rpx,
                    alignment: AlignmentDirectional.center,
                    child: NeteaseItem(IconFont.rehin_meirituijian, '每日推荐', 55.rpx),
                  ),
                  Container(
                    width: 100.rpx,
                    alignment: AlignmentDirectional.center,
                    child: NeteaseItem(IconFont.rehin_huaban, '私人FM', 35.rpx),
                  ),
                  Container(
                    width: 100.rpx,
                    alignment: AlignmentDirectional.center,
                    child: NeteaseItem(IconFont.rehin_gedan, '歌单', 35.rpx),
                  ),
                  Container(
                    width: 100.rpx,
                    alignment: AlignmentDirectional.center,
                    child: NeteaseItem(IconFont.rehin_paixingbang, '排行榜', 35.rpx),
                  ),
                  Container(
                    width: 90.rpx,
                    alignment: AlignmentDirectional.center,
                    child: NeteaseItem(IconFont.rehin_changpian, '数字专辑', 35.rpx),
                  ),
                  Container(
                    width: 90.rpx,
                    alignment: AlignmentDirectional.center,
                    child: NeteaseItem(IconFont.rehin_changpian, '数字专辑', 35.rpx),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
