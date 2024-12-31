import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/modules/auth/bindings/login_binding.dart';
import 'package:monna_no_nihongo/src/modules/auth/bindings/register_binding.dart';
import 'package:monna_no_nihongo/src/modules/auth/views/login_view.dart';
import 'package:monna_no_nihongo/src/modules/auth/views/register_view.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/bindings/letter_binding.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/views/dashboard_view.dart';
import 'package:monna_no_nihongo/src/modules/dashboard/views/letter_view.dart';
import 'package:monna_no_nihongo/src/modules/kanji/bindings/kanji_binding.dart';
import 'package:monna_no_nihongo/src/modules/kanji/views/kanji_details.dart';
import 'package:monna_no_nihongo/src/modules/kanji/views/kanji_view.dart';
import 'package:monna_no_nihongo/src/modules/splash/bindings/splash_binding.dart';
import 'package:monna_no_nihongo/src/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final List<GetPage> routes = [
    GetPage(
      name: Routes.SPLASH,
      binding: SplashBinding(),
      page: () {
        return SplashView();
      },
    ),
    GetPage(
      name: Routes.LOGIN,
      binding: LoginBinding(),
      page: () {
        return LoginView();
      },
    ),
    GetPage(
      name: Routes.SIGNUP,
      binding: RegisterBinding(),
      page: () {
        return RegisterView();
      },
    ),
    GetPage(
      name: Routes.DASHBOARD,
      binding: DashboardBinding(),
      page: () {
        return DashboardView();
      },
    ),
    GetPage(
      name: Routes.LETTER,
      binding: LetterBinding(),
      page: () {
        return LetterView();
      },
    ),
    GetPage(
      name: Routes.KANJI,
      binding: KanjiBinding(),
      page: () {
        return KanjiView();
      },
    ),
    GetPage(
      name: Routes.KANJI_DETAILS,
      binding: KanjiBinding(),
      page: () {
        return KanjiDetails();
      },
    ),
  ];
}
