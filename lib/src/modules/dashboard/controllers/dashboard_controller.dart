import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/constants/app_strings.dart';
import 'package:monna_no_nihongo/src/core/data/repository/auth_repository.dart';
import 'package:monna_no_nihongo/src/core/local/preferences/preference_manager.dart';
import 'package:monna_no_nihongo/src/core/routes/app_pages.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class DashboardController extends BaseController {
  final AuthRepository authRepository;
  final PreferenceManager preferenceManager;
  DashboardController(this.authRepository, this.preferenceManager);

  @override
  void onInit() {
    super.onInit();
  }

  navigateToLetterScreen({required String letterId}) {
    Get.toNamed(Routes.LETTER, arguments: letterId);
  }

  navigateToKanjiScreen() {
    Get.toNamed(Routes.KANJI);
  }

  navigateToParticleScreen() {
    Get.toNamed(Routes.PARTICLE);
  }

  navigateToLessonScreen() {
    Get.toNamed(Routes.LESSON);
  }

  logOut() async {
    final sessionId = await preferenceManager.getString(AppStrings.spUserSession);
    authRepository.logOut(sessionId);
    await preferenceManager.clear();
    Get.offAllNamed(Routes.LOGIN);
  }
}
