import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/constants/app_strings.dart';

import 'package:monna_no_nihongo/src/core/local/preferences/preference_manager.dart';
import 'package:monna_no_nihongo/src/core/routes/app_pages.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class SplashController extends BaseController {
  final PreferenceManager preferenceManager;

  SplashController({
    required this.preferenceManager,
  });
  @override
  void onInit() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        checkUserLoggedIn();
      },
    );
    super.onInit();
  }

  checkUserLoggedIn() async {
    final userId = await preferenceManager.getString(AppStrings.spUserId);
    if (userId.isNotEmpty) {
      Get.offAllNamed(Routes.DASHBOARD);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  @override
  void onClose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
        SystemUiOverlay.bottom,
      ],
    );
    super.onClose();
  }
}
