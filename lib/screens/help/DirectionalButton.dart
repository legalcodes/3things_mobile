// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class DirectionalButton extends StatelessWidget {
  final String text;
  final Function onTap;
  @override

  DirectionalButton({
    @required this.onTap,
    this.text,
    Key key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    double paddingValue = 32;
    EdgeInsets direction = (text == '<')
        ? EdgeInsets.only(right: paddingValue, top: paddingValue)
        : EdgeInsets.only(left: paddingValue, top: paddingValue);

    return Container(
        padding: direction,
        child: GestureDetector(
            onTap: onTap,
            child: RichText(
                text: TextSpan(
                  text: text,
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                )
            )
        )
    );
  }
}
