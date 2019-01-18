import 'package:flutter/material.dart';

class TravelHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Image.network(
            'https://gw.alicdn.com/tfs/TB1RVq7zFzqK1RjSZFCXXbbxVXa-750-350.jpg_790x10000Q75.jpg_.webp',
            height: 175,
            fit: BoxFit.cover,
          ),
          ComponentTitle(),
          ComponentTools(),
          ComponentText(),
        ],
      ),
    ));
  }
}

class ComponentTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        '【淘酒店精选】上海迪士尼周边多店2天1晚通兑含早含接送',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      )),
                  Text(
                    '月销 324 笔',
                    style: TextStyle(color: Colors.black45),
                  )
                ])),
            FavoriteWidget(),
          ],
        ));
  }
}

class ComponentTools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Expanded buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            icon,
            color: color,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      ));
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
      child: Row(
        children: <Widget>[
          buildButtonColumn(Icons.call, '拨打'),
          buildButtonColumn(Icons.near_me, '定位'),
          buildButtonColumn(Icons.share, '分享'),
        ],
      ),
    );
  }
}

class ComponentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
      child: Text(
        '''
        这次两大两小去迪斯尼玩，订了这个酒店，首先看中的是车接车送，来去地铁站，来去迪斯尼都有专车接送，接送的车也是整洁的大巴，这样的确是省心又省钱。其次到了酒店，前台美女还给升级了家庭房，就更开心了，房间面积虽然不大，不过温馨整洁，床的软硬也正合适。酒店的早餐虽然乏善可陈不过对应它的房价也没可挑剔了，好在酒店外面小吃店很多，特别是出门左拐的牛肉粉丝汤又便宜又好吃。还有送的钥匙扣小挂件和暖贴也是很用心了。唯一的缺点是隔音不太好和热水不够给力。不过下次来迪斯尼我还是会考虑来的
        ''',
        softWrap: true,
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 10;

  void _toActionFavorite() {
    setState(() {
      // If the lake is currently favorited, unfavorite it.
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
        // Otherwise, favorite it.
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0.0),
          child: IconButton(
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toActionFavorite,
          ),
        ),
        SizedBox(
          width: 18.0,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
