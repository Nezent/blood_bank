import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

RegisterDataModel registerDataModelFromJson(String str) =>
    RegisterDataModel.fromJson(json.decode(str));

String registerDataModelToJson(RegisterDataModel data) =>
    json.encode(data.toJson());

class RegisterDataModel {
  RegisterDataModel({
    this.id,
    required this.name,
    required this.bloodType,
    required this.number,
    required this.password,
    required this.address,
    required this.isAvailable,
  });

  ObjectId? id;
  String name;
  String bloodType;
  String number;
  String password;
  String address;
  bool isAvailable;

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) =>
      RegisterDataModel(
          id: json["_id"],
          name: json["name"],
          bloodType: json["blood_type"],
          number: json["number"],
          password: json["password"],
          address: json["address"],
          isAvailable: json["isAvailable"]);

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "blood_type": bloodType,
        "number": number,
        "password": password,
        "address": address,
        "isAvailable": isAvailable,
      };
}
