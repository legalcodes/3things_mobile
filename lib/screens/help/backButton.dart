// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class backButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: () {
          Navigator.pop(context,);
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 15),
          child: RichText(
              text: TextSpan(
                text: 'Go Back',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                ),
              )
          ),
      )
    );
  }

}
