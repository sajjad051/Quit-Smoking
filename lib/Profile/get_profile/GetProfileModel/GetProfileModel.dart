// To parse this JSON data, do
//
//     final userGetProfileData = userGetProfileDataFromJson(jsonString);

import 'dart:convert';

UserGetProfileData userGetProfileDataFromJson(String str) => UserGetProfileData.fromJson(json.decode(str));

String userGetProfileDataToJson(UserGetProfileData data) => json.encode(data.toJson());

class UserGetProfileData {
  int? id;
  String? name;
  String? email;
  String? avatarUrl;
  DateTime? quitDate;
  int? perDaySmoke;
  int? cigarettesPerPack;
  double? pricePerCigarate;
  String? currency;
  DateTime? createdAt;

  UserGetProfileData({
    this.id,
    this.name,
    this.email,
    this.avatarUrl,
    this.quitDate,
    this.perDaySmoke,
    this.cigarettesPerPack,
    this.pricePerCigarate,
    this.currency,
    this.createdAt,
  });

  factory UserGetProfileData.fromJson(Map<String, dynamic> json) => UserGetProfileData(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    avatarUrl: json["avatar_url"],
    quitDate: json["quit_date"] == null ? null : DateTime.parse(json["quit_date"]),
    perDaySmoke: json["per_day_smoke"],
    cigarettesPerPack: json["cigarettes_per_pack"],
    pricePerCigarate: json["price_per_cigarate"]?.toDouble(),
    currency: json["currency"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "avatar_url": avatarUrl,
    "quit_date": "${quitDate!.year.toString().padLeft(4, '0')}-${quitDate!.month.toString().padLeft(2, '0')}-${quitDate!.day.toString().padLeft(2, '0')}",
    "per_day_smoke": perDaySmoke,
    "cigarettes_per_pack": cigarettesPerPack,
    "price_per_cigarate": pricePerCigarate,
    "currency": currency,
    "created_at": createdAt?.toIso8601String(),
  };
}
