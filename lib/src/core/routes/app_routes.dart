part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;
  static const SIGNUP = _Paths.SIGNUP;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const LETTER = _Paths.LETTER;
  static const KANJI = _Paths.KANJI;
  static const KANJI_DETAILS = _Paths.KANJI_DETAILS;
  static const PARTICLE = _Paths.PARTICLE;
}

abstract class _Paths {
  static const SPLASH = "/splash";
  static const LOGIN = "/login";
  static const SIGNUP = "/signup";
  static const DASHBOARD = "/dashboard";
  static const LETTER = "/letter";
  static const KANJI = "/kanji";
  static const KANJI_DETAILS = "/kanji_details";
  static const PARTICLE = "/particles";
}
