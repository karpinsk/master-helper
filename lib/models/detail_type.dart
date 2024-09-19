import 'package:flutter/material.dart';

enum DetailType {
  circle,
  cutting,
  casting,
  rubber,
  none;

  Color getBackgroundColor(DetailType type) {
    switch (type) {
      case DetailType.circle:
        return const Color.fromARGB(60, 177, 78, 132);
      case DetailType.casting:
        return const Color.fromARGB(60, 227, 158, 33);
      case DetailType.cutting:
        return const Color.fromARGB(60, 0, 136, 123);
      case DetailType.rubber:
        return const Color.fromARGB(60, 110, 57, 217);
      default:
        return Colors.transparent;
    }
  }

  String getDetailTypeName(DetailType type) {
    switch (type) {
      case DetailType.circle:
        return 'круг';
      case DetailType.cutting:
        return 'порезка';
      case DetailType.casting:
        return 'литьё';
      case DetailType.rubber:
        return 'РТИ (резина)';
      default:
        return '---';
    }
  }
}
