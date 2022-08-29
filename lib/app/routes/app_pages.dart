import 'package:get/get.dart';

import '../modules/home/bindings/home.binding.dart';
import '../modules/home/views/home.view.dart';
import '../modules/login/bindings/login.binding.dart';
import '../modules/login/views/login.view.dart';
import '../modules/register/bindings/register.binding.dart';
import '../modules/register/views/register.view.dart';
import '../modules/register_local_vet/bindings/register_local_vet.binding.dart';
import '../modules/register_local_vet/views/register_local_vet.view.dart';
import '../modules/register_product_vet/bindings/register_product_vet.binding.dart';
import '../modules/register_product_vet/views/register_product_vet.view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTER_LOCAL_VET;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_LOCAL_VET,
      page: () => RegisterLocalVetView(),
      binding: RegisterLocalVetBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PRODUCT_VET,
      page: () => RegisterProductVetView(),
      binding: RegisterProductVetBinding(),
    ),
  ];
}
