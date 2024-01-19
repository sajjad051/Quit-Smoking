import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:quit_smoke/Auth/View/Screen/login_page.dart';

import '../Auth/View/Screen/home_page.dart';
import '../Auth/View/Screen/registration-_page.dart';
import '../Profile/post_profile/PostPofileScreen/post_profile_screen.dart';
import '../Profile/post_profile/PostProfileControler/post_profile_controler.dart';

abstract class Routes{
  static const login = '/login';
  static const registration = '/registration';
  static const home = '/home';
  static const PostProfile = '/PostProfile';
}

abstract class AppPage {
  static final routes = [
    GetPage(name: Routes.registration, page: ()=> RegistrationPage1 (),),
    GetPage(name: Routes.login, page: ()=> LoginPage (),),
    GetPage(name: Routes.home, page: ()=> HomePage (),),
    GetPage(name: Routes.PostProfile, page: ()=> PostProfilePage (),),

  ];
}