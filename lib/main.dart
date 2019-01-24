// 引入 UI 库
import 'package:flutter/material.dart';

import 'package:demo/Basic/root.dart';
import 'package:demo/Navigation/root.dart';
import 'package:demo/ButtomTabbar/root.dart';
import 'package:demo/TopBar/root.dart';
import 'package:demo/RouterAnimation/root.dart';
import 'package:demo/Fuzzy/root.dart';
import 'package:demo/Animation/root.dart';
import 'package:demo/Touch/root.dart';
import 'package:demo/SQList/root.dart';
import 'package:demo/Travel/root.dart';
import 'package:demo/ToDoList/root.dart';
import 'package:demo/SplashScreen/root.dart';

// main 入口方法，进入 MyApp
void main() {
  // 基础组件
  runApp(Basic(items: new List<String>.generate(50, (i) => "$i 号技师")));

  // 导航跳转
  // runApp(MaterialApp(title: '导航', home: Navigation()));

  // 底部 Tabbar
  // runApp(Tabbar());

  // 顶部导航栏 Tabbar
  // runApp(TopHome());

  // 路由动画
  // runApp(RouterAnimationApp());

  // 毛玻璃模糊效果
  // runApp(FuzzyPage());

  // 动画练习
  // runApp(MaterialApp(title: '动画练习', home: AnimationPage()));

  // 手势练习
  // runApp(MaterialApp(title: 'Touch', home: TouchState()));

  // 数据存储
  // runApp(MaterialApp(
  //   title: 'Data',
  //   home: SQList(),
  // ));

  // UI 练习: 旅行详情页
  // runApp(MaterialApp(
  //   title: 'UI 练习',
  //   home: TravelHome()
  // ));

  // UI 练习: ToDoList
  // runApp(RootApp());

  // Splash Screen
  // runApp(MaterialApp(
  //   home: MyApp(),
  // ));
}
