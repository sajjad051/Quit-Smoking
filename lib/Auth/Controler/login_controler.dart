
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

import '../../Routes/Routes.dart';
import '../Model/Model.dart';
import '../Service/login_service.dart';
import '../Service/registration_service.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var hidePassword = true.obs;
  var showPassword = false.obs;
  var hideConfirmPassword = true.obs;
  var showConfirmPassword = false.obs;
  var checkPassword = false.obs;
  final userGetData = UserGetData().obs;
  //final userDataGet = UserGetData().obs;
  var token = " ";
  var tokenType = " ";
  final getStorage=GetStorage();

  login() async {
    FormData body = FormData({
      'email': email.text,
      'password': password.text,
    });
    print(body.fields);

    await LoginService().login(body).then((value){
      if(value != null) {
        userGetData.value = value;
        if (userGetData().token!.accessToken != null) {
          token = userGetData().token!.accessToken!.toString();
          tokenType = userGetData().token!.type.toString();
          getStorage.write("token", token);
          // getStorage.write("tokenType", tokenType);
          Get.toNamed(Routes.home);
          Get.snackbar("Welcome", "Login success ");
        }else{
          Get.snackbar("Error", "wrong password " );
        }
      } else {
        Get.snackbar("Error", "exception occur ");
      }

    });

  }

  }
