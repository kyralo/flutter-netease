import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netease/common/constants/global_constants.dart';
import 'package:netease/common/key/global_key.dart';
import 'package:netease/page/layout/index.dart';
import 'package:netease/store/FacadeProvider.dart';
import 'package:netease/store/NavbarProvider.dart';
import 'package:provider/provider.dart';

Widget createApp() {
  return
    MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => NavbarProvider()),
      ChangeNotifierProvider(create: (_) => FacadeProvider()),
    ],
    child: MaterialApp(
      title: 'HELLO NETEASE',
      navigatorKey: Global.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        highlightColor: Color.fromRGBO(255,255,255,0),
        splashColor: Color.fromRGBO(255,255,255,0),
        primaryColor: Colors.white,
      ),
      home: Builder(builder: (context) {
        // 初始化
        GlobalConstants.initialize(context);
        return buildView(context);
      }),
    ),
  );
}