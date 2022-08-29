import 'package:get/get.dart';

import '../modules/home/bindings/home.binding.dart';
import '../modules/home/views/home.view.dart';
import '../modules/login/bindings/login.binding.dart';
import '../modules/login/views/login.view.dart';
import '../modules/pets/bindings/pets.binding.dart';
import '../modules/pets/views/pets.view.dart';
import '../modules/register-pet/bindings/register_pet.binding.dart';
import '../modules/register-pet/views/register_pet.view.dart';
import '../modules/register/bindings/register.binding.dart';
import '../modules/register/views/register.view.dart';
import '../modules/register_local_vet/bindings/register_local_vet.binding.dart';
import '../modules/register_local_vet/views/register_local_vet.view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PETS;

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
      name: _Paths.PETS,
      page: () => PetsView(),
      binding: PetsBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_LOCAL_VET,
      page: () => RegisterLocalVetView(),
      binding: RegisterLocalVetBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PET,
      page: () => RegisterPetView(),
      binding: RegisterPetBinding(),
    ),
  ];
}
