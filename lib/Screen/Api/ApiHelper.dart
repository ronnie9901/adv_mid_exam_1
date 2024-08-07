import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiHelper{

  Future<Map> fatchdata() async {

    Uri url = Uri.parse('https://dummyjson.com/quotes');
    Response response = await http.get(url);

    if(response.statusCode==200){
      final json = response.body;
      final Map  data = jsonDecode(json);
      print(data);
      return data;

    }

    else{
      return {};
    }


  }
}