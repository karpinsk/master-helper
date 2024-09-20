import 'package:flutter/material.dart';

enum DetailType {
  circle(Color.fromARGB(60, 177, 78, 132), 'круг'),
  cutting(Color.fromARGB(60, 0, 136, 123), 'порезка'),
  casting(Color.fromARGB(60, 227, 158, 33), 'литьё'),
  rubber(Color.fromARGB(60, 110, 57, 217), 'РТИ (резина)'),
  none(Colors.transparent, '---');

  const DetailType(this.color, this.name);

  final Color color;
  final String name;
}
