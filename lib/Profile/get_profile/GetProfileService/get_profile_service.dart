import 'dart:convert';

import 'package:get/get_connect/connect.dart';

import '../../../aToken/get_user_data_from_getstorage.dart';
import '../GetProfileModel/GetProfileModel.dart';

class GetProfileService {

  Future <UserGetProfileData?> getTokenData() async {
    final connect = GetConnect();
    try {
      final response = await connect.get(
        'https://smoke.devdia.com/api/profile',
        headers: {
          'Accept': 'Application/Json',
          'Authorization': 'Bearer ${GetUserDataFromGetStorage().token}'
          //'Authorization': '${GetUserDataFromGetStorage().tokenType} ${GetUserDataFromGetStorage().token}'
        },
      );
      print(
          "${GetUserDataFromGetStorage().tokenType}${GetUserDataFromGetStorage()
              .token}");
      print("object");
      print(response.body);
      if (response.statusCode == 200) {
        var json = response.body;
        var jsonDataEncode = jsonEncode(json);
        return userGetProfileDataFromJson(jsonDataEncode);

        //print(jsonDataEncode);
        // print(json);

        // return true;
      }
    } on Exception {
      return null;
    }
  }
}