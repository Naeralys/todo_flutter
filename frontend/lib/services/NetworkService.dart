import 'dart:convert';

import 'package:http/http.dart' as http;

const MAIN_URL = 'API KEY HERE';

class NetworkService {
  Future get({String endpoint}) async =>
    http.get(MAIN_URL + endpoint)
    .then((response) => jsonDecode(response.body)); 

  Future post({String endpoint, dynamic body}) async {
    http.Response response = await http.post(
      MAIN_URL + endpoint, 
      headers: { 'Content-Type' : 'application/json' } ,
      body: jsonEncode(body));
    if (response.statusCode == 200) return response.body;
     else throw new Exception("Response error: ${response.statusCode}");
  }

   Future delete({String endpoint}) async =>
    http.delete(MAIN_URL + endpoint)
    .then((response) => response.body); 
}