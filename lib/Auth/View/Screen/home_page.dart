import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Profile/get_profile/GetProfileControler/get_profile_controler.dart';
import '../../../Routes/Routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  GetProfileController controller = Get.put(GetProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
            ()=> Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white),
                          color: Colors.greenAccent.shade200,
                        ),
                        child: Center(child: Text("Id : ${controller.userGetProfileData().id.toString()}",style: TextStyle(color: Colors.black,fontSize: 25),)),
                      ),


                    ElevatedButton(onPressed: () {Get.toNamed(Routes.PostProfile);},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Set the desired border radius
                          ),
                          backgroundColor: Colors.purple,
                      ),
                          child: Text('Update Profile',style: TextStyle(color: Colors.white),) ),
                  ],
                ),

            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(45),
                border: Border.all(color: Colors.red),
              ),
             // child: controller.userGetProfileData().avatarUrl!.toString() == Null ? Center(child: Text('set Image')) : Center(child: Text('set Image')),
              child: Center(child: Text('set Image')),
            ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(child: Text("Name : ${controller.userGetProfileData().name.toString()}",style: TextStyle(color: Colors.black,fontSize: 20),)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(child: Text("Email : ${controller.userGetProfileData().email.toString()}",style: TextStyle(color: Colors.black,fontSize: 15),),),
                ),

                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(child: Text("Per Day Smoke : ${controller.userGetProfileData().perDaySmoke.toString()}",style: TextStyle(color: Colors.black,fontSize: 15),),),
                ),

                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(child: Text("Price Per Cigarate : ${controller.userGetProfileData().pricePerCigarate.toString()}",style: TextStyle(color: Colors.black,fontSize: 15),),),
                ),

                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(child: Text("Cigarettes Per Pack : ${controller.userGetProfileData().cigarettesPerPack.toString()}",style: TextStyle(color: Colors.black,fontSize: 15),),),
                ),

                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(child: Text("Quit Date : ${controller.userGetProfileData().quitDate.toString()}",style: TextStyle(color: Colors.black,fontSize: 15),),),
                ),

                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(child: Text("Currency : ${controller.userGetProfileData().currency.toString()}",style: TextStyle(color: Colors.black,fontSize: 15),),),
                ),

                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey.shade200,
                  ),
                  child: Center(child: Text("Created At : ${controller.userGetProfileData().createdAt.toString()}",style: TextStyle(color: Colors.black,fontSize: 15),),),
                ),



              ],

            ),
          ),

        ),
      ),
    );
  }
}
