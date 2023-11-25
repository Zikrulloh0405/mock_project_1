import 'modelling/modelling.dart';
import 'network_service/network_services.dart';

void main(List<String> args) async {
  String data = await NetWorkService.getData(NetWorkService.apiProdeuct);

  List<Person> person1 = fromJsonToObject(data);
  int i = 0;
  person1.forEach((element) {
    i++;
    print("Object $i : ${element.address.zipCode}");
  });
}
