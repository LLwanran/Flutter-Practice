import 'package:flutter/material.dart';
import 'frosted_glass.dart';

class FuzzyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fuzzy',
            style: TextStyle(fontSize: 26.0),
          ),
          elevation: 0.0,
        ),
        body: FrostedPage(),
      ),
    );
  }
}
