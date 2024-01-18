import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Routes/Routes.dart';
import '../../Controler/reg_controler.dart';

class RegistrationPage1 extends StatelessWidget {
   RegistrationPage1({super.key});

  RegistrationController controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
            ()=> Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Hi, ...  ....  ....  ...",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Name",
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
                    controller: controller.name,
                    decoration: InputDecoration(
                      hintText: "  Name",
                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Email",
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
                    controller: controller.email,
                    decoration: InputDecoration(
                      hintText: "  Email",
                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
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
                      color: Colors.grey.shade200
                  ),
                  child: TextField(
                    onChanged: (text) {
                     // controller.validatePassword(text.toString());
                    },
                    obscureText: controller.hidePassword.value,
                    controller: controller.password,
                    decoration: InputDecoration(
                      hintText: "  Password",
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          controller.hidePassword.value == false
                              ? InkWell(
                              onTap: () {
                                controller.hidePassword.value = true;
                              },
                              child: const Icon(Icons.visibility))
                              : InkWell(
                              onTap: () {
                                controller.hidePassword.value = false;
                              },
                              child: const Icon(Icons.visibility_off)),
                        ],
                      ),

                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Confirm Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
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
                      color: Colors.grey.shade200
                  ),
                  child: TextField(
                    onChanged: (text) {
                      // controller.validatePassword(text.toString());
                    },
                    obscureText: controller.hideConfirmPassword.value,
                    controller: controller.confirmPassword,
                    decoration: InputDecoration(
                      hintText: " Confirm Password",
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          controller.hideConfirmPassword.value == false
                              ? InkWell(
                              onTap: () {
                                controller.hideConfirmPassword.value = true;
                              },
                              child: const Icon(Icons.visibility))
                              : InkWell(
                              onTap: () {
                                controller.hideConfirmPassword.value = false;
                              },
                              child: const Icon(Icons.visibility_off)),
                        ],
                      ),

                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        //Get.toNamed(Routes.forget);
                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationColor: Colors.purple),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    width: Get.width, // Set the width
                    height: 50.0,
                    // Set the height
                    child: ElevatedButton(
                      onPressed: () {
                        controller.reg();
                        // Get.toNamed(Routes.home);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple, // Set the background color
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
    ),
        ));
  }
}
