import 'package:pitza_mitza/models/category-model.dart';
class ListFastFoodModel {
  int? id;
  Food? food;
  String? shortTitle;
  String? title;
  String? description;
  int? price;
  int? status;

  ListFastFoodModel();

  ListFastFoodModel.fromjson(dynamic json) {
    id = json["id"];
    food = json["food"] != null ? Food.fromjson(json["food"]) : null;
    shortTitle = json["short_title"];
    title = json["title"];
    description = json["description"];
    price = json["price"];
    status = json["status"];
  }
}

class Food {
  int? id;
  String? name;
  String? description;
  CategoryModel? category;

  Food();

  Food.fromjson(dynamic json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    category = json["category"] != null
        ? CategoryModel.fromjson(json["category"])
        : null;
  }
}
