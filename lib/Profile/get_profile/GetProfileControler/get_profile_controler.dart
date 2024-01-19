import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../GetProfileModel/GetProfileModel.dart';
import '../GetProfileService/get_profile_service.dart';

class GetProfileController extends GetxController{

  final userGetProfileData = UserGetProfileData().obs;


  void onReady(){
    super.onReady();
    ShowProfile();
  }

  ShowProfile() async {
    //Get.toNamed(Routes.home);
  await GetProfileService().getTokenData().then((value){
    if(value != null) {
      userGetProfileData.value = value;
    }

  });

}}