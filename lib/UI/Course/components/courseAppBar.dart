import 'package:flutter/material.dart';

import '/UI/common/constants.dart';
import '/UI/common/blurAppBar.dart';
import '/UI/Settings/settingsScreen.dart';

import '../localConstants.dart';

BlurAppBar courseAppBar(BuildContext context, String categoryName) {
  return BlurAppBar(
    padding: EdgeInsets.only(
      left: gDefaultMargin,
      top: gDefaultMargin * 3,
      right: gDefaultMargin,
    ),
    height: lAppBarHeight,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: gHeadingTextColor,
            // size: lDefaultMargin,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: gDefaultMargin / 8, top: gDefaultMargin),
          child: Text(categoryName, style: gScreenHeaderStyle),
        ),
      ],
    ),
  );
}