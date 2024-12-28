import 'package:get/get.dart';
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
    // GetPage(
    //   name: Routes.ONBOARDING,
    //   binding: OnboardingBinding(),
    //   page: () {
    //     return OnboardingView();
    //   },
    // ),
    // GetPage(
    //   name: Routes.AUTH,
    //   binding: AuthBindings(),
    //   transition: Transition.fadeIn,
    //   middlewares: [
    //     AuthMiddleware(),
    //   ],
    //   page: () {
    //     return AuthView();
    //   },
    //   children: [
    //     GetPage(
    //       name: Routes.LOGIN,
    //       binding: LoginBindings(),
    //       transition: Transition.rightToLeft,
    //       page: () {
    //         return LoginView();
    //       },
    //     ),
    //     GetPage(
    //       name: Routes.REGISTER,
    //       binding: RegisterBindings(),
    //       transition: Transition.rightToLeft,
    //       page: () {
    //         return RegisterView();
    //       },
    //     ),
    //     GetPage(
    //       name: Routes.EMAIL_VERIFICATION,
    //       binding: VerificationBindings(),
    //       transition: Transition.rightToLeft,
    //       page: () {
    //         final args = Get.arguments;
    //         return VerificationView(
    //           email: args['email'],
    //           successRoute: args['success_route'],
    //         );
    //       },
    //     ),
    //     GetPage(
    //       name: Routes.FORGOT_PASSWORD,
    //       binding: PasswordResetBindings(),
    //       transition: Transition.rightToLeft,
    //       page: () {
    //         return ForgotPasswordView();
    //       },
    //     ),
    //     GetPage(
    //       name: Routes.RESET_PASSWORD,
    //       binding: PasswordResetBindings(),
    //       transition: Transition.rightToLeft,
    //       page: () {
    //         final args = Get.arguments;
    //         return ResetPasswordView(
    //           email: args['email'],
    //         );
    //       },
    //     ),
    //   ],
    // ),
    // GetPage(
    //   name: Routes.HOME,
    //   binding: DashboardBindings(),
    //   page: () {
    //     return DashboardView();
    //   },
    // ),
    // GetPage(
    //   name: Routes.NOTIFICATION,
    //   binding: NotificationBinding(),
    //   page: () {
    //     return NotificationView();
    //   },
    // ),
    // GetPage(
    //   name: Routes.EVENT_DETAILS,
    //   binding: EventDetailsBinding(),
    //   page: () {
    //     final id = Get.arguments['id'];
    //     return EventDetailsView(
    //       id: id,
    //     );
    //   },
    // ),
  ];
}
