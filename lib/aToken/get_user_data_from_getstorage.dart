import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';



class GetUserDataFromGetStorage extends GetxController {
  final token = GetStorage().read("token");
  final tokenType = GetStorage().read("tokenType");

}