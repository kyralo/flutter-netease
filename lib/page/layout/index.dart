import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/common/style/icon_font.dart';
import 'package:netease/page/home/index.dart';
import 'package:netease/page/player/index.dart';
import 'package:netease/store/NavbarProvider.dart';
import 'package:netease/widgets/netease_play_bar.dart';

import 'package:netease/common/extension/num_fit.dart';
import 'package:provider/provider.dart';

Widget buildView(BuildContext context){
  var state = context.watch<NavbarProvider>();
  BottomNavigationBarItem _buildBottomNavigationBarItem(IconData iconData, String itemText) {
    return BottomNavigationBarItem(
      activeIcon: Container(
        padding: EdgeInsets.all(8.rpx),
        decoration: BoxDecoration(
          color: Color.fromRGBO(254, 58, 59, 1),
          borderRadius: BorderRadius.all(Radius.circular(90.rpx)),
          border: Border.all(width: 0.rpx, style: BorderStyle.none),
          gradient: RadialGradient(
            radius: 1,
            center: AlignmentDirectional.topEnd,
            tileMode: TileMode.mirror,
            colors: [
              Color.fromRGBO(247, 177, 177, 0.8),
              Color.fromRGBO(255,137,136, 0.9),
              Color.fromRGBO(254,58,59, 1),
            ],
            stops: [0.2, 0.6, 1],
          ),
        ),
        child: Icon(iconData, color: Color.fromRGBO(255, 255, 255, 1)),
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      icon: Icon(iconData, color: Color.fromRGBO(182, 182, 182, 1)),
      label: itemText,
    );
  }

  final List<BottomNavigationBarItem> bottomNavItems = [
    _buildBottomNavigationBarItem(IconFont.rehin_wangyiyunyinle, "发现"),
    _buildBottomNavigationBarItem(IconFont.rehin_duomeiti_duomeiti_shengbo, "播客"),
    _buildBottomNavigationBarItem(IconFont.rehin_yinyue1, "我的"),
    _buildBottomNavigationBarItem(IconFont.rehin_huatong, "k歌"),
    _buildBottomNavigationBarItem(IconFont.rehin_renqun2, "云村"),
  ];

  final pages = [
    Home(),
    Player(),
    Home(),
    Player(),
    Home(),
  ];

  _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != state.index) {
      state.change(index);
    }
  }

  return Scaffold(
    body: pages[state.index],
    bottomNavigationBar: Container(
      height: 160.2.rpx,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 0.2.rpx, color: Color.fromRGBO(191,191,191, 1))
          )
        // Border.all(width: 1, color: Color.fromRGBO(243, 243, 243, 1)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
            child: NeteasePlayBar(),
          ),
          Container(
            height: 100.rpx,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              border: Border.all(width: 0.rpx, style: BorderStyle.none),
            ),
            child: BottomNavigationBar(
              elevation: 0.0,
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              items: bottomNavItems,
              currentIndex: state.index,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                _changePage(index);
              },
              selectedLabelStyle: TextStyle(fontSize: 13.rpx),
              selectedItemColor: Color.fromRGBO(255, 0, 3, 1),
            ),
          ),
        ],
      ),
    ),
  );
}
