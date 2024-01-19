import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class UpdateProfileController extends GetxController {
  TextEditingController quit_date = TextEditingController();
  TextEditingController per_day_smoke = TextEditingController();
  TextEditingController cigarettes_per_pack = TextEditingController();
  TextEditingController price_per_cigarate = TextEditingController();
  TextEditingController currency = TextEditingController();
  var token = " ";
  var tokenType = " ";
  final getStorage = GetStorage();

  updateProfile() async {
    FormData body = FormData({
      'quit_date': quit_date.text,
      'per_day_smoke': per_day_smoke.text,
      'per_day_smoke': per_day_smoke.text,
      'price_per_cigarate': price_per_cigarate.text,
      'currency': currency.text,
    });
    print(body.fields);


  }
}

