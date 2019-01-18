import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network('https://cn.vuejs.org/images/logo.png'),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.2, sigmaY: 5.2),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                    ),
                    child: Center(
                      child: Text(
                        '渐进式 JavaScript 框架',
                        style: Theme.of(context).textTheme.display1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
