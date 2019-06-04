import 'package:flutter/material.dart';

class NavigationIconView {
  NavigationIconView({Widget icon, Widget title, TickerProvider sync})
      : item = new BottomNavigationBarItem(icon: icon, title: title),
        controller = new AnimationController(
            duration: kThemeAnimationDuration, vsync: sync);

  final BottomNavigationBarItem item;
  final AnimationController controller;
}
