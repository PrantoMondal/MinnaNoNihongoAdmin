import 'package:monna_no_nihongo/src/core/config/build_config.dart';

abstract class AppStrings {
  static final _config = BuildConfig.instance.envConfig;

  static const htLogo = "logo";

  static const appRole = 3;

  // Shared Preference key
  static final spAlreadyInstalled = "${_config.packageName}.app_already_installed";
  static final spUserId = "${_config.packageName}.user_id";
  static final spUserSession = "${_config.packageName}.user_session";
  static final spLocale = "${_config.packageName}.app_locale";
  static final spLocationPermission = "${_config.packageName}.user_location_permission";

  // Endpoints
  static const urlGetUser = "v1/token-user";
  static const urlRegister = "auth/register";
  static const urlLogin = "auth/login";
  static const urlResendOtp = "auth/resend-otp";
  static const urlVerifyOtp = "auth/verify-otp";
  static const urlForgotPassword = "auth/forgot-password";
  static const urlEventCategories = "v1/categories";
  static const urlEvents = "v1/events";
  static const urlEventsDetails = "v1/events";
  static const urlUsers = "v1/users";
  static const urlUserDetails = "v1/users";
}
