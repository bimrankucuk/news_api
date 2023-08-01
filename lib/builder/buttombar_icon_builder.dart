 import 'package:flutter/material.dart';

Padding buttombar_icon_builder(Icon icon ,String name,String activity) {
    Color icon_color = name == activity ? Color(0xFF1CB954):Color(0xFFA0A0A0) ;
    return Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 30,
                        height: 2,
                        color: icon_color,
                      ),
                      IconButton(
                        color: icon_color,
                        icon: icon,
                        iconSize: 15,
                        
                        onPressed: (){},
                      ),
                      Text("$name",style: TextStyle(color: icon_color,fontSize: 10),),                     
                    ],
                  ),
                );
  }