import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Controler/login_controler.dart';
import '../../Controler/reg_controler.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
            () => Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    "Sign In",
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
                    "Hi, Welcome Back",
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
                  height: 30,
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
                          Visibility(
                              visible: controller.checkPassword.value == true
                                  ? true
                                  : false,
                              child: const Icon(
                                Icons.check,
                                color: Colors.green,
                              )),
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
                        controller.login();
                        // Get.toNamed(Routes.home);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple, // Set the background color
                      ),
                      child: const Text(
                        'Sign In',
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
    );

  }
}
