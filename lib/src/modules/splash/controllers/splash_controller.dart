import 'package:flutter/services.dart';

import 'package:monna_no_nihongo/src/core/local/preferences/preference_manager.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class SplashController extends BaseController {
  final PreferenceManager preferenceManager;

  SplashController({
    required this.preferenceManager,
  });
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
