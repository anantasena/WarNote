import 'package:get/get.dart';

import '../modules/catatan/bindings/catatan_binding.dart';
import '../modules/catatan/views/catatan_view.dart';
import '../modules/catatan_hutang/bindings/catatan_hutang_binding.dart';
import '../modules/catatan_hutang/views/catatan_hutang_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profil_saya/bindings/profil_saya_binding.dart';
import '../modules/profil_saya/views/profil_saya_view.dart';
import '../modules/transaksi/bindings/transaksi_binding.dart';
import '../modules/transaksi/views/transaksi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TRANSAKSI,
      page: () => TransaksiView(),
      binding: TransaksiBinding(),
    ),
    GetPage(
      name: _Paths.CATATAN_HUTANG,
      page: () => CatatanHutangView(),
      binding: CatatanHutangBinding(),
    ),
    GetPage(
      name: _Paths.CATATAN,
      page: () => CatatanView(),
      binding: CatatanBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL_SAYA,
      page: () => ProfilSayaView(),
      binding: ProfilSayaBinding(),
    ),
  ];
}
