import 'dart:convert';

import 'package:http/http.dart';



class NetworkService {
  static const String baseUrl = "655ef6b8879575426b443f99.mockapi.io";
  static const String apiProduct = "/food";

  static Map<String,String>headers = {'Content-type' : 'application/json'};

  static Future<String> getData(String api) async {
    Uri url = Uri.https(baseUrl, api);
    Response response = await get(url);
    return response.body;
  }

  static Future<String> postData(Map<String, dynamic> body) async {
    Uri url = Uri.https(baseUrl, apiProduct);
    Response response = await post(url, body: jsonEncode(body),headers: headers );
    if (response.statusCode != 200 && response.statusCode != 201) {
      return "Something went wrong ${response.statusCode}";
    }
    return "The json uploaded succesfully ${response.body}"; 
  }
}
