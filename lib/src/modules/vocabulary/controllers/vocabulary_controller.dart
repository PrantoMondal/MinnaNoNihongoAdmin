import 'package:get/get.dart';
import 'package:monna_no_nihongo/src/core/routes/app_pages.dart';
import 'package:monna_no_nihongo/src/modules/shared/base/base_controller.dart';

class VocabularyController extends BaseController {
  @override
  void onInit() {
    super.onInit();
  }

  void navigateToVocabularyDetails({required String arguments}) {
    Get.toNamed(Routes.VOCABULARY_DETAILS);
  }
}
