import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

import '../../../Routes/Routes.dart';
import '../../get_profile/GetProfileControler/get_profile_controler.dart';
import '../PostProfileService/post_profile_service.dart';

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
    try {
      FormData body = FormData({
        'quit_date': quit_date.text,
        'per_day_smoke': int.parse(per_day_smoke.text),
        'cigarettes_per_pack': int.parse(cigarettes_per_pack.text),
        'price_per_cigarate': double.parse(price_per_cigarate.text),
        'currency': currency.text,
      });
       print(body.fields);

      await PostProfileService().updateProfile(body).then((value) {
        print(value);
        if (value == 201) {
          // print("object");
          Get.toNamed(Routes.home);
          GetProfileController controller = Get.put(GetProfileController());
          controller.ShowProfile();
          Get.snackbar("Successful", "Profile Updated ");
        }
        else {
          Get.snackbar("Error", "exception occur ");
        }
      });

}
  catch(e){
    print("Error: Unable to parse as a number");
  }
    }
  }


