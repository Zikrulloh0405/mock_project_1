import 'dart:convert';

List<Person> fromJsonToObject(String data) =>
    List<Person>.from(jsonDecode(data).map((e) => Person.fromJson(e)));

String fromObjectToJson(Person person) => jsonEncode(person.toJson());

class Person {
  late String name;
  late int age;
  late bool isStudent;
  late List<int> grades;
  late Adress address;

  Person(
      {required this.name,
      required this.age,
      required this.isStudent,
      required this.grades,
      required this.address});

  Person.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    age = json["age"];
    isStudent = json["isStudent"];
    grades = List<int>.from(json["grades"].map((e) => e));
    address = Adress.fromJson(json["address"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "age": age,
      "isStudent": isStudent,
      "grades": grades,
      "address": address
    };
  }

  String talabami(bool talabe) => (talabe == true) ? 'Student' : 'Not Strudent';

  @override
  String toString() {
    return """
Name : $name
Age : $age
Status : ${talabami(isStudent)}
Grades : $grades
Adress : $address
""";
  }
}

class Adress {
  late String city;
  late String zipCode;

  Adress.fromJson(Map<String, dynamic> json) {
    city = json["city"];
    zipCode = json["zipCode"];
  }

  Map<String, dynamic> toJSon() {
    return {"city": city, "zipCode": zipCode};
  }

  @override
  String toString() {
    return """
City : $city
Zip Code : $zipCode
""";
  }
}
