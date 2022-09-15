import 'package:boilerplate_getx_flutter/data/remote/wrapper/model_factory.dart';
import 'package:flutter/rendering.dart';

class User implements ModelFactory {
  User({
    this.firstName,
    this.lastName,
    this.age,
    this.id,
  });

  String? firstName;
  String? lastName;
  int? age;
  String? id;

  factory User.fromJson(Map<String, dynamic> json) => User(
        firstName: json["first_name"],
        lastName: json["last_name"],
        age: json["age"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "age": age,
        "id": id,
      };
}
