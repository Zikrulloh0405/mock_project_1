import 'modelling/modelling.dart';
import 'network_service/network_services.dart';

void main(List<String> args) async {
  Food food = Food(
      dishName: 'Idish',
      ingredients: [Ingredient(name: 'kakao', quantity: '105')],
      nutritionalInformation: NutritionalInformation(
          calories: 105,
          carbohydrates: '78d',
          protein: '2000',
          fat: '90',
          fiber: '305',
          sugar: '80'),
      preparationSteps: ['qwerty']);

  Map<String, dynamic> toJonFomat = food.toJson();

  String data = await NetworkService.postData(toJonFomat);
  print(data);
}
