import 'package:flutter/material.dart';

// MyApp 类继承自 StatelessWidget，@override 重写
class Basic extends StatelessWidget {
  final List<String> items;
  // 构造函数
  Basic({Key key, @required this.items}) : super(key: key);

  @override

  // build 方法
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter!',
        // Scaffold 脚手架创建
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: new Color(0xFF26C6DA),
              title: const Text('AppBar')
            ),
            body: Center(
              child: DataList(items: items)
            )
        )
      );
  }
}

// 文本
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello Word?! 🤪，我是一个专门展示文本的东西，额，我应该被称作组件...',
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 16.0,
        color: Color.fromRGBO(66, 165, 245, 1.0),
        decoration: TextDecoration.underline,
        decorationStyle: TextDecorationStyle.dotted,
      ),
    );
  }
}

// 渐变容器
class LinearGradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Hello Flutter \n🤪🤪🤪🤪🤪🤪',
        style: TextStyle(fontSize: 38.0),
      ),
      alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // color: Colors.lightBlue,
      padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            Colors.greenAccent,
            Colors.lightBlue,
            Colors.purpleAccent
          ]),
          border: Border.all(width: 2.0, color: Colors.redAccent),
          borderRadius: BorderRadius.circular(15.0)),
    );
  }
}

// 网络图片
class NetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547641360829&di=4600f376299a8752eafc5c0f05deab1c&imgtype=0&src=http%3A%2F%2Fp0.ssl.qhimg.com%2Ft01c3f5bf72e7d1ac67.png',
      fit: BoxFit.cover,
      color: Colors.transparent,
      colorBlendMode: BlendMode.multiply,
      repeat: ImageRepeat.noRepeat,
    );
  }
}

// 横向列表
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal, children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width / 4,
        color: Colors.purple,
      ),
      Container(
        width: MediaQuery.of(context).size.width / 4,
        color: Colors.yellow,
      ),
      Container(
        width: MediaQuery.of(context).size.width / 4,
        color: Colors.orange,
      ),
      Container(
        width: MediaQuery.of(context).size.width / 4,
        color: Colors.greenAccent,
      ),
    ]);
  }
}

// 竖向列表
class VerticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListTile(
          title: Text('ListTile 1',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
          subtitle: Text('1'),
          leading: Icon(
            Icons.call,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text('ListTile 2',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
          subtitle: Text('2'),
          leading: Icon(
            Icons.call,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text('ListTile 3',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
          subtitle: Text('3'),
          leading: Icon(
            Icons.call,
            color: Colors.blue[500],
          ),
        ),
        ListTile(
          title: Text('ListTile 4',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
          subtitle: Text('4'),
          leading: Icon(
            Icons.call,
            color: Colors.blue[500],
          ),
        )
      ],
    );
  }
}

// 竖向图片列表
class VerticalImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Image.network(
            'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
        Image.network(
            'http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg'),
        Image.network('http://jspang.com/static/myimg/smile-vue.jpg'),
      ],
    );
  }
}

// 数据列表
class DataList extends StatelessWidget {
  final List<String> items;
  DataList({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.call),
          title: Text('欢迎光临，${items[index]}为您服务'),
          subtitle: Text('天上人间 恭祝您，阖家幸福'),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      },
    );
  }
}

// 卡片列表
class GridViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
        childAspectRatio: 0.75,
      ),
      children: <Widget>[
        Image.network(
          'https://img3.doubanio.com/view/photo/m/public/p2368873040.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://img3.doubanio.com/view/photo/m/public/p2508826592.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://img3.doubanio.com/view/photo/m/public/p2508826873.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://img3.doubanio.com/view/photo/m/public/p2508826863.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://img1.doubanio.com/view/photo/m/public/p2508826727.jpg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

// 行
class RowViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      RaisedButton(
        onPressed: () {},
        color: Colors.redAccent,
        child: Text('Button'),
      ),
      Expanded(
        child: RaisedButton(
          onPressed: () {},
          color: Colors.blueAccent,
          child: Text('Blue Button'),
        ),
      ),
      RaisedButton(
        onPressed: () {},
        color: Colors.orangeAccent,
        child: Text('Button'),
      ),
    ]);
  }
}

// 列
class ColumnViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('我是1号技师'),
        Text('我是2号技师'),
        Expanded(child: Text('我是3号技师')),
        Expanded(child: Text('我是4号技师')),
        Expanded(child: Text('我是5号技师，我会的可多了')),
      ],
    ));
  }
}

// 层
class StackViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        ClipOval(
          child: FadeInImage.assetNetwork(
            placeholder: "",
            fit: BoxFit.cover,
            image:
                "https://avatars2.githubusercontent.com/u/13606492?s=460&v=4",
            width: 300.0,
            height: 300.0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text(
            '小猪佩奇',
            style: TextStyle(
                color: Colors.white.withOpacity(.95),
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );

    return Center(
      child: stack,
    );
  }
}

// 卡片布局
class CardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('天上人间 北京总店'),
            subtitle: Text('北京市 海淀区 颐和园路'),
            leading: Icon(Icons.gps_fixed),
          ),
          Divider(),
          ListTile(
            title: Text('天上人间 上海分店'),
            subtitle: Text('上海市 浦东新区 达尔文路'),
            leading: Icon(Icons.gps_fixed),
          ),
          Divider(),
          ListTile(
            title: Text('天上人间 成都分店'),
            subtitle: Text('成都市 武侯区 一环路'),
            leading: Icon(Icons.gps_fixed),
          ),
        ],
      ),
    );

    return Center(
      child: card,
    );
  }
}

// 侧滑菜单
class SlideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.9),
      children: <Widget>[
        ClipOval(
          child: FadeInImage.assetNetwork(
            placeholder: "",
            fit: BoxFit.cover,
            image:
                "https://avatars2.githubusercontent.com/u/13606492?s=460&v=4",
            width: 90.0,
            height: 90.0,
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text('侧滑菜单')),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            stack,
            ListTile(
              title: Text("识花"),
              trailing: Icon(Icons.local_florist),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("搜索"),
              trailing: Icon(Icons.search),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text("设置"),
              trailing: Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => SettingsPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('我想侧滑点什么 🤪')),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情页')),
      body: Center(),
    );
  }
}

class TextStylePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TextStyleState();
  }
}

class TextStyleState extends State<TextStylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // 去掉导航栏下面的阴影
          elevation: 0.0,
          title: Text('文本样式'),
          backgroundColor: Color.fromRGBO(70, 70, 100, 1),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'inherit: 为 false 的时候不显示',
                style: TextStyle(
                  inherit: true,
                ),
              ),
              Text(
                'color/fontSize: 字体颜色，字号等',
                style: TextStyle(
                  color: Color.fromARGB(255, 150, 150, 150),
                  fontSize: 22.0,
                ),
              ),
              Text(
                'fontWeight: 字重',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                'fontStyle: FontStyle.italic 斜体',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                'letterSpacing: 字符间距',
                style: TextStyle(
                  letterSpacing: 10.0,
                  // wordSpacing: 15.0
                ),
              ),
              Text(
                'wordSpacing: 字或单词间距',
                style: TextStyle(
                    // letterSpacing: 10.0,
                    wordSpacing: 15.0),
              ),
              Text(
                'textBaseline:这一行的值为TextBaseline.alphabetic',
                style: TextStyle(textBaseline: TextBaseline.alphabetic),
              ),
              Text(
                'textBaseline:这一行的值为TextBaseline.ideographic',
                style: TextStyle(textBaseline: TextBaseline.ideographic),
              ),
              Text('height: 用在Text控件上的时候，会乘以fontSize做为行高,所以这个值不能设置过大',
                  style: TextStyle(
                    height: 1.0,
                  )),
              Text('decoration: TextDecoration.overline 上划线',
                  style: TextStyle(
                      decoration: TextDecoration.overline,
                      decorationStyle: TextDecorationStyle.wavy)),
              Text('decoration: TextDecoration.lineThrough 删除线',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationStyle: TextDecorationStyle.dashed)),
              Text('decoration: TextDecoration.underline 下划线',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dotted)),
            ],
          ),
        ));
  }
}
