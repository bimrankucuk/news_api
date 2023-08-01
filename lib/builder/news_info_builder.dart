 import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../modal/ArticlesModal.dart';


Container news_info_builder(List<Articles> articals) {
    return Container(
            height: 215,
            child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: articals.length ,
                        itemBuilder: (BuildContext context ,int index){
                        return Padding(
                          padding:  const EdgeInsets.only(right: 26),
                          child: GestureDetector(
                              onTap: () async {
              final url = Uri.parse("${articals[index].url??"https://support.google.com/webmasters/answer/2445990?hl=tr"}");
            
              if (await launchUrl(url)) {
                throw 'Could not launch $url';
              } 
            },
                            child: Column(
                              children: [
                                Container(
                                  width: 136,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                    image:NetworkImage("${articals[index].urlToImage??"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwgGo1GezgXj15z0vGJSR_0qWKxLiH3V4yNgnyZh7-RQ&s"}"),
                                    fit: BoxFit.cover,
                                     ),
                                    
                                     ),
                              
                                ),
                                Container(
                                  width: 136,
                                  height: 105,
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                  
                                    children: [
                                      
                                       Text("${articals[index].author ?? "Unknown"}",style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 12 , color: Color(0xFF1CB954)),),
                                Expanded(child: Text("${articals[index].title ?? "Unknown"}",style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 13 , color: Color(0xFFA0A0A0)),)),
                                                   
                             
                                  ]),
                                ),
                                    ],
                            ),
                          ),
                        );
                      }
                      ),
          );
  }