// import 'dart:convert';
//
// import 'package:get/get_connect/connect.dart';
//
// import '../../../aToken/get_user_data_from_getstorage.dart';
//
// class PostProfileService {
//
//   Future  updateProfile(headers) async {
//     final connect = GetConnect();
//     try {
//       final response = await connect.post(
//         'https://smoke.devdia.com/api/profile',
//         headers: {
//           'Accept': 'Application/Json',
//           'Authorization': 'Bearer ${GetUserDataFromGetStorage().token}'
//           //'Authorization': '${GetUserDataFromGetStorage().tokenType} ${GetUserDataFromGetStorage().token}'
//         },
//       );
//       print(
//           "${GetUserDataFromGetStorage().tokenType}${GetUserDataFromGetStorage()
//               .token}");
//       print("object");
//       print(response.body);
//       print(response.statusCode);
//       if (response.statusCode == 200) {
//         return response.statusCode;
//         // print(jsonDataEncode);
//
//         //return true;
//       }
//
//     } on Exception {
//       return null;
//     }
//   }
// }