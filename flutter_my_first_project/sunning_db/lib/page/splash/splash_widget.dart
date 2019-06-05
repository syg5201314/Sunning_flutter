import 'package:doubanApp/constant/Constant.dart';
import 'package:doubanApp/page/container_page.dart';
import 'package:doubanApp/util/screen_utils.dart';
import 'package:flutter/material.dart';

class SplashWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashWidgetState();
  }
}

class _SplashWidgetState extends State<SplashWidget> {
  var container = ContainerPage();
  bool showAD = true;

  @override
  Widget build(BuildContext context) {
    print('build splash page');
    return _createSplashContainer();
  }

  Widget _createSplashContainer() {
    return new Stack(
      children: <Widget>[
        Offstage(
          child: container,
          offstage: showAD,
        ),
        Offstage(
          child: Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment(0.0, 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: ScreenUtils.screenW(context) / 3,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage(Constant.ASSETS_IMG + 'home.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          '落花有意随流水,流水无心恋落花',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment(1.0, 0.0),
                        child: Container(
                          margin: const EdgeInsets.only(right: 30.0, top: 20.0),
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              Constant.ASSETS_IMG + 'ic_launcher.png',
                              width: 50.0,
                              height: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                'Hi,豆芽',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
