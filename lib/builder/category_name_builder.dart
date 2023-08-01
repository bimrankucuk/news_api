 import 'package:flutter/cupertino.dart';

import '../page/MyHomePage.dart';

Padding category_name_builder(String name) {
    return Padding(
            padding: const EdgeInsets.only(top:38,left: 16,right: 16,bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("$name",style: Styletext.categoryStyle(),),
              Container(
                width: 72,
                height: 24,
                decoration: BoxDecoration(
                  color: const Color(0xFF333333),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(child: Text("View Al",style: Styletext.viewAlStyle(),)),
              ),
            ],),
          );
  }
