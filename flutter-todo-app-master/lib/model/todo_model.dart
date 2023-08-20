import 'dart:convert';

List<TodoModelData> todoModelDataFromJson(String str) => List<TodoModelData>.from(json.decode(str).map((x) => TodoModelData.fromJson(x)));

String todoModelDataToJson(List<TodoModelData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TodoModelData {
  int id;
  String title;
  bool isChecked;

  TodoModelData({
    required this.id,
    required this.title,
    required this.isChecked,
  });

  factory TodoModelData.fromJson(Map<String, dynamic> json) => TodoModelData(
    id: json["id"],
    title: json["title"],
    isChecked: json["isChecked"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "isChecked": isChecked,
  };
}
