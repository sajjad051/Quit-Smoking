import 'dart:convert';

import 'package:get/get_connect/connect.dart';
import '../Model/Model.dart';
class LoginService {

  var status = false;

  Future <UserGetData?> login(body) async {
    final connect = GetConnect();
    try {
      final response = await connect.post(
        'https://smoke.devdia.com/api/login',
        body,
      );
      // print(response.body);
      // print("object");
      if (response.statusCode == 200) {
        var json = response.body;
        var jsonDataEncode = jsonEncode(json);
        return userGetDataFromJson(jsonDataEncode);

        //print(jsonDataEncode);
        // print(json);

        // return true;
      }
    } on Exception {
      return null;
    }
  }
}