import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/modal/ArticlesModal.dart';
import 'package:news/modal/NewsModal.dart';
class services {


final url_general = "https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=debf8759e0ff4d55be8a744c1011542d" ;
final url_sport = "https://newsapi.org/v2/top-headlines?country=us&category=sport&apiKey=debf8759e0ff4d55be8a744c1011542d" ;

// ignore: non_constant_identifier_names
Future<List<Articles>> get_news_general () async {

var request = await http.get(Uri.parse(url_general));
if (request.statusCode==200){
var response = json.decode(request.body);
var result = NewsModal.fromJson(response);
 return result.articles?? [];
}
else{
  throw Exception("request status not 200");
}         
}


Future<List<Articles>> get_news_sport () async {

var request = await http.get(Uri.parse(url_sport));
if (request.statusCode==200){

var response = json.decode(request.body);
var result = NewsModal.fromJson(response);

 return result.articles?? [];

}
else{
  throw Exception("request status not 200");
}

  
}




}