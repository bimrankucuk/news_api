import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'page/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         iconButtonTheme: IconButtonThemeData(style: ButtonStyle(
          iconColor:MaterialStatePropertyAll(Colors.amber)
         )),
         primarySwatch: Colors.blue, 
         appBarTheme: AppBarTheme(
  backgroundColor: Colors.transparent,
  systemOverlayStyle: SystemUiOverlayStyle.light,
  titleTextStyle: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),
  actionsIconTheme: IconThemeData()
  
   ),

      ),
      home: const MyHomePage(),
    );
  }
}






