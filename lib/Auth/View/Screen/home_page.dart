import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Profile/get_profile/GetProfileControler/get_profile_controler.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  GetProfileController controller = Get.put(GetProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
            ()=> Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Id : ${controller.userGetProfileData().id.toString()}",style: TextStyle(color: Colors.green,fontSize: 25),),
                SizedBox(height: 15,),
                Text("Name : ${controller.userGetProfileData().name.toString()}",style: TextStyle(color: Colors.greenAccent,fontSize: 25),),
                SizedBox(height: 15,),
                Text("Email : ${controller.userGetProfileData().email.toString()}",style: TextStyle(color: Colors.black,fontSize: 18),),


              ],

            ),
          ),

        ),
      ),
    );
  }
}
