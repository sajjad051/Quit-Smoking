
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../Routes/Routes.dart';
import '../Service/registration_service.dart';

class RegistrationController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  var hidePassword = true.obs;
  var showPassword = false.obs;
  var hideConfirmPassword = true.obs;
  var showConfirmPassword = false.obs;
  var checkPassword = false.obs;

  reg() async {
    FormData body = FormData({
      'name': name.text,
      'email': email.text,
      'password': password.text,
      'password_confirmation': confirmPassword.text,
    });
   // print(body.fields);

    await RegistrationService().registration(body).then((value){
      if(value == 201) {
       // print("object");
        Get.toNamed(Routes.home);
      }
      else{
        Get.snackbar("Error", "exception occur " );
      }
    });
    //Get.toNamed(Routes.home);

  }
}