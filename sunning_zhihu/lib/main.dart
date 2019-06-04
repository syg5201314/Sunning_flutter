import 'package:flutter/material.dart';
import 'package:sunning_zhihu/index/Index.dart';

void main() => runApp(ZhiHu());

class ZhiHu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '知乎',
      home: new Index(),
    );
  }
}
