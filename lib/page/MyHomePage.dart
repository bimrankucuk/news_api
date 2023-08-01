import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news/modal/ArticlesModal.dart';
import 'package:news/services/Services.dart';

import '../builder/buttombar_builder.dart';
import '../builder/category_name_builder.dart';
import '../builder/icon_homepage_builder.dart';
import '../builder/news_info_builder.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final services _services = services();
  List<Articles> articals=[];
  // ignore: non_constant_identifier_names
  List<Articles> articles_list_sport=[];
 
  @override
  void initState() {
    _services.get_news_general().then((value) {
      // ignore: unnecessary_null_comparison
      if(value!=null){
        setState(() {
          articals=value ;
        });       
      }else{
        throw Exception("value null");
      }

    });
     _services.get_news_sport().then((value) {
      // ignore: unnecessary_null_comparison
      if(value!=null){
        setState(() {
          articles_list_sport=value ;
        });      
      }else{
        throw Exception("value null");
      }

    });
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [

                 //row newsText and ıcons
                 Padding(
                padding: const EdgeInsets.only(top: 58,left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("News",style: Styletext.newsStyle(),),
                    Row(children: [
                    icon_homepage(FontAwesomeIcons.magnifyingGlass),
                    icon_homepage(FontAwesomeIcons.star),
                    icon_homepage(FontAwesomeIcons.bars),
                    ],)
                  ],
                ),
              ),
              //news result 
              Column(children: [

                //category name and icon
                category_name_builder("General"),
                //news info general
                news_info_builder(articals),
            
            
              //category name and icon
             category_name_builder("Sport"),
              //news info sport
                news_info_builder(articles_list_sport),
              
                
                ],)
              ],
              
            ),
            buttombar_builder(screen_size,"Home"),
          ],
        ),
      ),
    );
  }

  
 
}

class Styletext {
 static    TextStyle newsStyle() => const TextStyle(fontWeight: FontWeight.w700,fontSize: 32 , color: Color(0xFFE0E0E0));
 static    TextStyle categoryStyle() => const TextStyle(fontWeight: FontWeight.w600,fontSize: 24 , color: Color(0xFFE0E0E0));
 static    TextStyle viewAlStyle() => const TextStyle(fontWeight: FontWeight.w600,fontSize:11 ,color: Color(0xFFE0E0E0));

}