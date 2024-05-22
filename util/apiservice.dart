import 'dart:convert';
import 'package:http/http.dart'as http;

import 'DataFetcher.dart';

class ApiConsumer extends Datafetcher<List> {
  
  
  Future<List> fetchData(String url) async {
    late final dynamic response;

    late final List parsedData;

    //print('I am starting the Try...block inside ApiConsumer...');
    try {
      response = await http.get(Uri.parse(url));
      
    } on Exception catch (e) {
      print(e);
    }

   
    parsedData = jsonDecode(response.body);

    
    return Future.value(parsedData);
  }


}