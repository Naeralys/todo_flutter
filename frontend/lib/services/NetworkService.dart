import 'dart:convert';

import 'package:http/http.dart' as http;

const MAIN_URL = 'API_ENDPOINT_HERE';

class NetworkService {
  Future get({String endpoint}) async =>
    http.get(MAIN_URL + endpoint)
    .then((response) => jsonDecode(response.body)); 

  Future post({String endpoint, String body}) async {
    http.Response response = await http.post(MAIN_URL + endpoint, body: body);
    if (response.statusCode == 200) return jsonDecode(response.body);
     else throw new Exception("Response error: ${response.statusCode}");
  }
}