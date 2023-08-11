import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  RegisterModel({
    required this.name,
    required this.bloodType,
    required this.number,
    required this.password,
    required this.address,
    required this.isAvailable,
  });

  String name;
  String bloodType;
  String number;
  String password;
  String address;
  bool isAvailable;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        name: json["name"],
        bloodType: json["blood_type"],
        number: json["number"],
        password: json["password"],
        address: json["address"],
        isAvailable: json["isAvailable"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "blood_type": bloodType,
        "number": number,
        "password": password,
        "address": address,
        "isAvailable": isAvailable,
      };
}
