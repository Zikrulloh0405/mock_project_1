import 'package:http/http.dart';

//6554a27063cafc694fe6bbeb.mockapi.io/art
class NetworkServices {
  static const String baseUrl = "6554a27063cafc694fe6bbeb.mockapi.io";
  static const String apiProduct = "/art";

  static Future<String> getData(String api) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri);
    return response.body;
  }
}
