part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;
  static const SIGNUP = _Paths.SIGNUP;
}

abstract class _Paths {
  static const SPLASH = "/splash";
  static const LOGIN = "/login";
  static const SIGNUP = "/signup";
}
