// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/screens/home/paddedThing.dart';

class ThreeThings extends StatefulWidget {
  @override
  _ThreeThingsState createState() => _ThreeThingsState();
}

class _ThreeThingsState extends State<ThreeThings> {
  var tapped = { '1': false, '2': false, '3': false };
  var thingsMap = { '1': '', '2': '', '3': '' };

  @override
  void initState() {
    super.initState();
    _loadThings();
  }

  _loadThings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      thingsMap['1'] = (prefs.getString('1') ?? '');
      thingsMap['2'] = (prefs.getString('2') ?? '');
      thingsMap['3'] = (prefs.getString('3') ?? '');
    });
  }

  _onTapNum(String fieldNum) {
    setState(() { tapped[fieldNum] = !tapped[fieldNum];});
  }

  _curriedHandleInputChange(num fieldNum) {
    handleInputChange (newText) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        thingsMap['$fieldNum'] = newText;
        prefs.setString('$fieldNum', thingsMap['$fieldNum']);
      });
    };
    return handleInputChange;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:24, right:24),
      child: Column(
          children: [
            PaddedThing(inputHandler: _curriedHandleInputChange(1), data: thingsMap['1'], num: '1', onTapNum: _onTapNum, tapped: tapped),
            PaddedThing(inputHandler: _curriedHandleInputChange(2), data: thingsMap['2'], num: '2', onTapNum: _onTapNum, tapped: tapped),
            PaddedThing(inputHandler: _curriedHandleInputChange(3), data: thingsMap['3'], num: '3', onTapNum: _onTapNum, tapped: tapped),
          ]
      ),
    );
  }
}

