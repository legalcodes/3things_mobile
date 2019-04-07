// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/screens/help/backButton.dart';
import 'package:threethings/screens/help/StaggeredTips.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: SafeArea(
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                  children: [
                    backButton(),
                  ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StaggeredTips(),
                  ]
              ),
            ]
          )
        ),
      )
    );
  }
}
