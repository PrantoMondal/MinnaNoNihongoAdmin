import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/local/preferences/preference_manager_impl.dart';
import 'package:monna_no_nihongo/src/modules/splash/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(
        preferenceManager: PreferenceManagerImpl.to,
      ),
    );
  }
}
