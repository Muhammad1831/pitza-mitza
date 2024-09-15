// ignore: file_names
class CategoryModel {
  int? id;
  String? title;

  CategoryModel(this.id, this.title);

  CategoryModel.fromjson(Map<String, dynamic> element) {
    id = element["id"];
    title = element["title"];
  }
}
