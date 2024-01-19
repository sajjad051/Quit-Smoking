import 'dart:convert';

import 'package:get/get_connect/connect.dart';

class RegistrationService {

  // var status = false;
  Future  registration(body) async {
    final connect = GetConnect();
    try {
      final response = await connect.post(
        'https://smoke.devdia.com/api/signup',
        body,
      );
      //print(response.statusCode);
      if (response.statusCode == 201) {
        return response.statusCode;
       // print(jsonDataEncode);

        //return true;
      }


    }on Exception {
      return null;
    }

  }}