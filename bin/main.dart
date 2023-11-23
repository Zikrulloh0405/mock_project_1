// import 'dart:convert';

import 'network_service/network_services.dart';

void main(List<String> args) async {
  String data = await NetworkServices.getData(NetworkServices.apiProduct);
  print(data);
}
