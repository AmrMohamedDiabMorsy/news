import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_app/model/SourseResponse.dart';
class ApiManager{
   static Future<SourseResponse> getSources()async{
     try{
       Uri url=Uri.https("newsapi.org","/v2/top-headlines/sources",
           {"apiKey":"b55ef8aa44e74c2bbb2f2674cdc76605"});
       http.Response response= await http.get(url);
       var jsonData =jsonDecode(response.body);
       SourseResponse sourceResponse = SourseResponse.fromJson(jsonData);
       return sourceResponse ;
     }catch(e){
       print(e.toString());
       throw Exception();
     }


  }
}
