import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../PostProfileControler/post_profile_controler.dart';

class PostProfilePage extends StatelessWidget {
   PostProfilePage({super.key});

  UpdateProfileController controller = Get.put(UpdateProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: SingleChildScrollView (
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    "Update Profile",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


                const Text(
                  "Quit Date",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
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
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: controller.quit_date,
                    decoration: InputDecoration(
                      hintText: "  2024-01-01",
                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                const Text(
                  "Per Day Smoke",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
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
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: controller.per_day_smoke,
                    decoration: InputDecoration(
                      hintText: "  Per Day Smoke",
                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                const Text(
                  "Cigarettes Per Pack",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
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
                  child: TextField(
                    keyboardType: TextInputType.number,
                     controller: controller.cigarettes_per_pack,
                    decoration: InputDecoration(
                      hintText: "  Cigarettes Per Pack",
                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                const Text(
                  "Price Per Cigarette",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
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
                  child: TextField(
                    keyboardType: TextInputType.number,
                     controller: controller.price_per_cigarate,
                    decoration: InputDecoration(
                      hintText: "  Price Per Cigarette",
                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                const Text(
                  "Currency",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
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
                  child: TextField(
                     controller: controller.currency,
                    decoration: InputDecoration(
                      hintText: "  BDT",
                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                Center(
                  child: Container(
                    width: Get.width, // Set the width
                    height: 50.0,
                    // Set the height
                    child: ElevatedButton(
                      onPressed: () {
                        controller.updateProfile();
                        // Get.toNamed(Routes.home);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Set the desired border radius
                        ),
                        backgroundColor: Colors.purple, // Set the background color
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );

  }
}
