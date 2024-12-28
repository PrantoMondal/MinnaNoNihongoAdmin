part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const ONBOARDING = _Paths.ONBOARDING;
}

abstract class _Paths {
  static const SPLASH = "/splash";
  static const ONBOARDING = "/onboarding";
}
