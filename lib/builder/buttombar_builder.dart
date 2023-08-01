

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'buttombar_icon_builder.dart';

Container buttombar_builder(Size screen_size,String activity) {
    return Container(
            width: screen_size.width,
            height: 70,
            color: Color(0xFF1E1E1E),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buttombar_icon_builder(Icon(FontAwesomeIcons.chartLine),"Analytics",activity),
                buttombar_icon_builder(Icon(FontAwesomeIcons.newspaper),"News",activity),
                buttombar_icon_builder(Icon(FontAwesomeIcons.house),"Home",activity),
                buttombar_icon_builder(Icon(FontAwesomeIcons.briefcase),"Portfolio",activity),
                buttombar_icon_builder(Icon(FontAwesomeIcons.gear),"Settings",activity),
              ],
            ),
          );
  }
