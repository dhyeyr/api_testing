// To parse this JSON data, do
//
//     final apiTest = apiTestFromJson(jsonString);

import 'dart:convert';

List<ApiTest> apiTestFromJson(String str) => List<ApiTest>.from(json.decode(str).map((x) => ApiTest.fromJson(x)));

String apiTestToJson(List<ApiTest> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApiTest {
  int? userId;
  int? id;
  String? title;
  String? body;

  ApiTest({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory ApiTest.fromJson(Map<String, dynamic> json) => ApiTest(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
