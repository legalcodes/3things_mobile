// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/screens/home/title.dart';
import 'package:threethings/screens/home/quote.dart';
import 'package:threethings/screens/home/threethings.dart';
import 'package:threethings/screens/home/footer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SplitTitle(),
              Quote(),
              ThreeThings(),
              Footer(),
            ],
          ),
        )
    );
  }
}
