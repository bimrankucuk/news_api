import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/modal/ArticlesModal.dart';
import 'package:news/modal/NewsModal.dart';
class services {
  final String  _apiKey="debf8759e0ff4d55be8a744c1011542d";
String urlpars (String key){
 
final url = "https://newsapi.org/v2/top-headlines?country=us&category=$key&apiKey=$_apiKey" ;
  return url;
}

// ignore: non_constant_identifier_names

Future<List<Articles>> get_news (String key) async {

var request = await http.get(Uri.parse(urlpars(key)));
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