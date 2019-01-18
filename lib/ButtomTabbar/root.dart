import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBarApp(),
      title: 'BottomTabBar',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

// 第二种方式
class BottomBarApp extends StatefulWidget {
  @override
  _BottomBarAppState createState() => _BottomBarAppState();
}

class _BottomBarAppState extends State<BottomBarApp> {
  int _index = 0;
  Color _bottomNavigationColor = Colors.blue;
  final List<Widget> _childrenList = [PageOne(), PageTwo(), PageThree()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childrenList[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
              title: Text(
                'Tabbar1',
                style: TextStyle(color: _bottomNavigationColor),
              ),
              icon: Icon(
                Icons.home,
                color: _bottomNavigationColor,
              )),
          BottomNavigationBarItem(
              title: Text('Tabbar2',
                  style: TextStyle(color: _bottomNavigationColor)),
              icon: Icon(
                Icons.email,
                color: _bottomNavigationColor,
              )),
          BottomNavigationBarItem(
              title: Text('Tabbar3',
                  style: TextStyle(color: _bottomNavigationColor)),
              icon: Icon(
                Icons.videogame_asset,
                color: _bottomNavigationColor,
              )),
        ],
      )
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}

// 静态子页面
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: Text('1')
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('2'),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Text('3'),
      ),
    );
  }
}