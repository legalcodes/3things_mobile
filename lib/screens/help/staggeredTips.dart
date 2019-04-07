// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/screens/help/DirectionalButton.dart';
import 'package:threethings/screens/help/tips.dart';
import 'package:threethings/screens/help/constants.dart';

class StaggeredTips extends StatefulWidget {
  @override
  _StaggeredTipsState createState() => _StaggeredTipsState();
}

class _StaggeredTipsState extends State<StaggeredTips> with TickerProviderStateMixin {
  int max;
  int _current;
  bool _isLast;
  bool _isFirst;
  AnimationController controller;
  Animation<double> animation;

  _StaggeredTipsState({
    this.controller,
    this.max,
    this.animation
  });

  @override
  void initState() {
    super.initState();
    max = tips.length-1;
    _current = 0;
    _isLast = false;
    _isFirst = true;

    controller = AnimationController( vsync: this, duration: Duration(seconds: 1));
    animation = Tween( begin: 0.0, end: 1.0, ).animate(controller);
    controller.forward(from: 0);
  }

  void setBounds() {
    if (_current == max) { setState(() { _isLast = true; }); }
    if (_current == 0) { setState(() { _isFirst = true; }); }
    if (_current > 0) { setState(() { _isFirst = false; }); }
    if (_current < max) { setState(() { _isLast = false; }); }
  }

  void scroll(direction) {
    if (direction == FORWARD && (!_isLast)) {
      controller.reverse();
      setState(() { _current++; });
      setBounds();
      controller.forward(from: 0);
    } else if (direction == BACKWARD && (!_isFirst )) {
      controller.reverse();
      setState(() { _current--;});
      setBounds();
      controller.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.8;

    return Container (
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 230),
      width: c_width,
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            child: FadeTransition(
              opacity: animation,
              child: Text(
                tips[_current],
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DirectionalButton(text: '<', onTap: () => scroll(BACKWARD)),
                DirectionalButton(text: '>', onTap: () => scroll(FORWARD)),
              ]
            )
          ),
        ],
      ),
    );
  }
}

